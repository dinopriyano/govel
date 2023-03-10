@extends('layouts.app')

@section('title', 'Govel | Destinations')

@push('addonStyle')
<style>
    body {
        background: #f2f0ff !important;
    }

    section {
        margin-bottom: 60px;
    }

    .card-image {
        height: 250px;
        min-width: 220px;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }

    .card-border {
        border-left: 2px solid #cbd1df;
    }

    .mb-7 {
        margin-bottom: 100px;
    }

    @media screen and (max-width: 769px) {
        .card-border {
            border: 0;
            border-top: 2px solid #cbd1df;
        }
    }

    @media screen and (max-width: 524px) {
        .card-image {
            min-width: 100%;
            margin-bottom: 20px;
        }

        .cardy {
            flex-wrap: wrap;
        }
    }

</style>
@endpush

@section('content')
<section class="search" style="margin-top: 70px;">
    <form action="{{ route('search') }}" method="get">
        <div class="tab-content bg-white pt-5" id="pills-tabContent">
            <div class="tab-pane fade show active container" id="sale" role="tabpanel">
                <div class="row m-0 justify-content-evenly align-items-center">
                    <div class="col-lg-2 p-0 d-flex align-items-center">
                        <h5 class="m-0 me-3 baseColor"><i class="fas fa-map-marker-alt"></i></h5>
                        <select name="location" id="location" class="form-select fw-normal"
                            aria-label="Default select example">
                            <option selected disabled hidden>Select Your Destination</option>
                            <option value="Japanese">Japanese</option>
                            <option value="Indonesia">Indonesia</option>
                            <option value="Hong Kong">Hong Kong</option>
                            <option value="Germany">Germany</option>
                        </select>
                    </div>
                    <div class="col-lg-2 p-0 my-4 my-lg-0 d-flex align-items-center">
                        <h5 class="m-0 me-3 baseColor"><i class="fas fa-building"></i></h5>
                        <select name="type" id="type" class="form-select fw-normal" aria-label="Default select example">
                            <option selected disabled hidden>Select Type</option>
                            <option value="Hotels">Hotels</option>
                            <option value="Hostels">Hostels</option>
                            <option value="Apartments">Apartments</option>
                        </select>
                    </div>
                    <div class="col-lg-2 p-0 mb-4 mb-lg-0 d-flex align-items-center">
                        <h5 class="m-0 me-3 baseColor"><i class="fas fa-smile"></i></h5>
                        <select name="rating" id="rating" class="form-select fw-normal"
                            aria-label="Default select example">
                            <option selected disabled hidden>Choose Rating</option>
                            <option value="4">4+</option>
                            <option value="3">3+</option>
                            <option value="2">2+</option>
                        </select>
                    </div>
                    <div class="col-lg-2 p-0 d-flex align-items-center">
                        <h5 class="m-0 me-3 baseColor"><i class="fas fa-users"></i></h5>
                        <select name="status" id="status" class="form-select fw-normal"
                            aria-label="Default select example">
                            <option selected disabled hidden>Destination Availability</option>
                            <option value="Available">Available</option>
                            <option value="Unavailable">Unavailable</option>
                        </select>
                    </div>
                    <div class="col-lg-1 d-flex justify-content-end p-0 mt-4 mt-lg-0">
                        <button type="submit" class="btn bgColor bgHover text-white px-0 py-2 w-100">
                            <p class="fw-bold">Search</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</section>

<section class="destinations container mb-7">
    <div class="row m-0 justify-content-between">
        <div class="col-lg-3 p-0 mt-4">
            <div class="filter bg-white rounded-12 p-4">
                <h5 class="m-0 fw-bolder baseColor">Filter</h5>
                <p class="fw-bold mt-4 mb-2">By Star Rating</p>
                <div class="row m-0 justify-content-between">
                    <div class="col-6 p-0 my-1">
                        <div class="form-check">
                            <input class="form-check-input shadow-none bg-secondary-light" type="checkbox" value=""
                                id="5">
                            <label class="form-check-label fw-bold" for="5">
                                5 Stars
                            </label>
                        </div>
                    </div>
                    <div class="col-6 p-0 my-1">
                        <div class="form-check">
                            <input class="form-check-input shadow-none bg-secondary-light" type="checkbox" value=""
                                id="4">
                            <label class="form-check-label fw-bold" for="4">
                                2 Stars
                            </label>
                        </div>
                    </div>
                    <div class="col-6 p-0 my-1">
                        <div class="form-check">
                            <input class="form-check-input shadow-none bg-secondary-light" type="checkbox" value=""
                                id="3">
                            <label class="form-check-label fw-bold" for="3">
                                4 Stars
                            </label>
                        </div>
                    </div>
                    <div class="col-6 p-0 my-1">
                        <div class="form-check">
                            <input class="form-check-input shadow-none bg-secondary-light" type="checkbox" value=""
                                id="2">
                            <label class="form-check-label fw-bold" for="2">
                                1 Star
                            </label>
                        </div>
                    </div>
                    <div class="col-6 p-0 my-1">
                        <div class="form-check">
                            <input class="form-check-input shadow-none bg-secondary-light" type="checkbox" value=""
                                id="1">
                            <label class="form-check-label fw-bold" for="1">
                                3 Stars
                            </label>
                        </div>
                    </div>
                </div>
                <p class="fw-bold mt-4 mb-3">By Location</p>
                <select name="location" id="location"
                    class="form-select text-sm border py-2 px-3 rounded-3 fw-bold shadow-none">
                    <option selected hidden disabled>Select Location</option>
                    <option value="Indonesia">Indonesia</option>
                    <option value="Japanese">Japanese</option>
                    <option value="Germany">Germany</option>
                    <option value="Hong Kong">Hong Kong</option>
                </select>
            </div>
        </div>
        <div class="col-lg-9 p-0 ps-lg-5">
            @forelse ($data as $d)
            <div class="row m-0 bg-white rounded-12 mt-4">
                <div class="col-md-9 p-4 d-flex cardy">
                    <div class="card-image rounded-3 me-4"
                        style="background-image: url('{{ $d->galleries->count() ? Storage::url($d->galleries->first()->image) : Storage::url('assets/gallery/default.jpg') }}')">
                    </div>
                    <div class="card-content">
                        <h4 class="fw-bolder m-0">{{ $d->title }}</h4>
                        <div class="d-flex align-items-center my-2">
                            @for($i = 1; $i <= 5; $i++) @if($i <=$d->rating)
                                <p class="text-warning text-sm me-1"><i class="fas fa-star"></i></p>
                                @else
                                <p class="text-secondary-light text-sm me-1"><i class="fas fa-star"></i></p>
                                @endif
                            @endfor
                            <p class="text-sm baseColor fw-bold ms-2">({{ $d->rating }})</p>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <p class="text-sm baseColor fw-bold"><i class="fas fa-map-marker-alt"></i></p>
                            <p class="text-sm baseColor fw-bold ms-2">{{ $d->city }}, {{ $d->area }}, {{ $d->country }}
                            </p>
                        </div>
                        <p class="m-0 fw-bold text-sm">{{ $d->description }}</p>
                    </div>
                </div>
                <div class="col-md-3 p-4 card-border d-flex flex-column justify-content-between">
                    <div class="d-flex align-items-center baseColor justify-content-center mb-4">
                        <h4 class="m-0 me-2"><i class="fas fa-comment-alt"></i></h4>
                        <h6 class="m-0 fw-bold">{{ $d->galleries->count() }} Reviews</h6>
                    </div>
                    <div>
                        <h6 class="fw-bolder baseColor mb-3 text-center">${{ $d->price }} <span
                                class="text-secondary text-sm">/
                                Room</span></h6>
                        <a href="/destinations/{{ Str::lower($d->country) }}/{{ Str::lower($d->type) }}/{{ $d->slug }}"
                            class="btn bgColor text-white w-100 shadow-none">
                            <p class="fw-bold">See Detail</p>
                        </a>
                    </div>
                </div>
            </div>
            @empty
            <div class="mt-5"></div>
            <img src="{{ url('frontend/images/empty_search.png') }}" alt="search empty" width="65%" class="m-auto d-block mt-5 mt-lg-0">
            @endforelse

            <div class="d-flex justify-content-center mt-5 shadow-none">
                {{ $data->links('vendor.pagination.simple-bootstrap-4') }}
            </div>
        </div>
    </div>
</section>
@endsection

@push('addonScript')
<script>
    document.querySelector('.navbar-expand-lg').classList.add('scrolled');

</script>
@endpush
