defmodule CdpPro.Email do
  use Bamboo.Phoenix, view: CdpProWeb.EmailView
  import Bamboo.Email

  alias CdpProWeb.Router.Helpers, as: Routes

  def confirm_subscription_email(subscription) do
    new_email(from: "cdp-pro-alerts@mainframeos.com")
    |> to(subscription.email)
    |> put_layout({CdpProWeb.LayoutView, :email})
    |> subject("Confirm your subscription to CDP PRO alerts")
    |> render(:text_and_html_email)
  end
end
