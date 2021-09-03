require "test_helper"

class GerenciadorMaquinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gerenciador_maquina = gerenciador_maquinas(:one)
  end

  test "should get index" do
    get gerenciador_maquinas_url
    assert_response :success
  end

  test "should get new" do
    get new_gerenciador_maquina_url
    assert_response :success
  end

  test "should create gerenciador_maquina" do
    assert_difference('GerenciadorMaquina.count') do
      post gerenciador_maquinas_url, params: { gerenciador_maquina: { broken: @gerenciador_maquina.broken, description: @gerenciador_maquina.description, machine_type: @gerenciador_maquina.machine_type, month: @gerenciador_maquina.month, name: @gerenciador_maquina.name, purchace_date: @gerenciador_maquina.purchace_date } }
    end

    assert_redirected_to gerenciador_maquina_url(GerenciadorMaquina.last)
  end

  test "should show gerenciador_maquina" do
    get gerenciador_maquina_url(@gerenciador_maquina)
    assert_response :success
  end

  test "should get edit" do
    get edit_gerenciador_maquina_url(@gerenciador_maquina)
    assert_response :success
  end

  test "should update gerenciador_maquina" do
    patch gerenciador_maquina_url(@gerenciador_maquina), params: { gerenciador_maquina: { broken: @gerenciador_maquina.broken, description: @gerenciador_maquina.description, machine_type: @gerenciador_maquina.machine_type, month: @gerenciador_maquina.month, name: @gerenciador_maquina.name, purchace_date: @gerenciador_maquina.purchace_date } }
    assert_redirected_to gerenciador_maquina_url(@gerenciador_maquina)
  end

  test "should destroy gerenciador_maquina" do
    assert_difference('GerenciadorMaquina.count', -1) do
      delete gerenciador_maquina_url(@gerenciador_maquina)
    end

    assert_redirected_to gerenciador_maquinas_url
  end
end
