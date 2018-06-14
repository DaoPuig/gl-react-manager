import {
  NativeModules,
  Platform
} from 'react-native';

const RNPFManager = NativeModules.RNPFManager;
if (!RNPFManager && Platform.OS === "ios") {
  throw new Error("Could not find gl-react-manager's native module. It seems it's not linked correctly in your xcode-project.");
}

// Main JS-implementation Most methods are written to handle array of input
// operations.
class RNGPUManager {

  constructor() {

  }

  addEvent() {
    RNGPUManager.addEvent('Birthday Party', '4 Privet Drive, Surrey');
  }
  
}

export default new RNGPUManager();