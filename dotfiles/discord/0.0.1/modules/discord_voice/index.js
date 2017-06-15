let VoiceEngine = require('./discord_voice.node');
let ChildProcess = require('child_process');

let appSettings = global.appSettings;
let useLegacyAudioDevice = appSettings ? appSettings.get('useLegacyAudioDevice') : false;

global.features.declareSupported('voice_sound_stop_loop');
global.features.declareSupported('voice_relative_sounds');
global.features.declareSupported('voice_panning');
global.features.declareSupported('voice_multiple_connections');

if (process.platform === 'win32') {
  global.features.declareSupported('voice_legacy_subsystem');
}

VoiceEngine.createTransport = VoiceEngine._createTransport;

VoiceEngine.setUseLegacyAudioDevice = function (useLegacyAudioDevice_) {
  if (!appSettings) {
    console.warn('Unable to access app settings.');
    return;
  }

  if (useLegacyAudioDevice === useLegacyAudioDevice_) {
    return;
  }

  appSettings.set('useLegacyAudioDevice', useLegacyAudioDevice_);
  appSettings.save();
  ChildProcess.spawn(process.argv[0], process.argv.splice(1), { detached: true });
  process.exit(0);
};

VoiceEngine.getUseLegacyAudioDevice = function () {
  return useLegacyAudioDevice;
};

console.log(`Initializing voice engine [legacy device: ${useLegacyAudioDevice}]`);
VoiceEngine.initialize({useLegacyAudioDevice});

module.exports = VoiceEngine;
