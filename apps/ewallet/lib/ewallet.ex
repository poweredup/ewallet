# Copyright 2018-2019 TurboPlay
# Author: Vince McMullin, CTO
# Website: turboplay.com
# Email: vincem@turboplay.com
#
# Copyright 2017-2018 OmiseGO
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule EWallet do
  @moduledoc """
  Documentation for EWallet.
  """
  def controller do
    quote do
      use Phoenix.Controller, namespace: EWallet
      import Plug.Conn
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
