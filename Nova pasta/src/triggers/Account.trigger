/**
*@author liciavereda
*/

trigger Account on Account ( after insert) {
    new AccountTH().run();
    
}