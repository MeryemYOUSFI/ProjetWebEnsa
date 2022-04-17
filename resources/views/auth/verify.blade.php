@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Verifier ton adresse email') }}</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            {{ __('un lien est envoyé à votre adresse email.') }}
                        </div>
                    @endif

                    {{ __('Vérifier votre boite email pour un lien de vérification.') }}
                    {{ __('si vous n avez pas recevez le lien d activation') }},
                    <form class="d-inline" method="POST" action="{{ route('verification.resend') }}">
                        @csrf
                        <button type="submit" class="btn btn-link p-0 m-0 align-baseline">{{ __('cliquer ici pour le renvoyer') }}</button>.
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
