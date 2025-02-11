cask "elecom-mouse-assistant" do
  version "5.2.0.000"
  sha256 "160b2118b9c3d5c107054ae58ac9b286671990dae1d094672a653a3bf1b93c02"

  # dl.elecom.co.jp was verified as official when first introduced to the cask
  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  appcast "https://www.elecom.co.jp.e.gj.hp.transer.com/global/download-list/utility/mouse_assistant/mac/"
  name "ELECOM Mouse Assistant"
  homepage "https://www.elecom.co.jp.e.gj.hp.transer.com/global/download-list/utility/mouse_assistant/"

  container nested: "ELECOM_Mouse_Installer_#{version}.dmg"

  pkg "ELECOM_Mouse_Installer_#{version}.pkg"

  uninstall pkgutil:   [
    "jp.co.elecom.mousePane",
    "jp.co.elecom.mouse.ELECOM-Uninstall",
    "jp.co.elecom.ELECOM-Mouse-Util",
  ],
            launchctl: "jp.com.ELECOM.autorun"

  caveats do
    reboot
  end
end
