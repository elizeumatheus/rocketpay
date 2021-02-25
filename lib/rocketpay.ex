defmodule Rocketpay do
  alias Rocketpay.Users.Create, as: UserCreate
  alias Rocketpay.Accounts.Deposit, as: AccountDeposit


  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate deposit(params), to: AccountDeposit, as: :call
end
