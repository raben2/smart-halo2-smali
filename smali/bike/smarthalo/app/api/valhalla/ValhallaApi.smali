.class public Lbike/smarthalo/app/api/valhalla/ValhallaApi;
.super Ljava/lang/Object;
.source "ValhallaApi.java"


# static fields
.field private static final devURL:Ljava/lang/String; = "https://valhalla-dev.smarthalo.bike/valhalla/"

.field private static final prodURL:Ljava/lang/String; = "https://valhalla.smarthalo.bike/valhalla/"

.field private static final stagingURL:Ljava/lang/String; = "https://valhalla-staging.smarthalo.bike/valhalla/"


# instance fields
.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/managers/KeyManager;Z)V
    .locals 3
    .param p1    # Lbike/smarthalo/app/managers/KeyManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "https://valhalla-staging.smarthalo.bike/valhalla/"

    .line 32
    invoke-virtual {p1}, Lbike/smarthalo/app/managers/KeyManager;->getValhallaStagingKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "https://valhalla.smarthalo.bike/valhalla/"

    .line 35
    invoke-virtual {p1}, Lbike/smarthalo/app/managers/KeyManager;->getValhallaProdKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "https://valhalla-dev.smarthalo.bike/valhalla/"

    .line 39
    invoke-virtual {p1}, Lbike/smarthalo/app/managers/KeyManager;->getValhallaDevKey()Ljava/lang/String;

    move-result-object p1

    .line 42
    :goto_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 44
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/api/interceptors/SHInterceptor;

    invoke-direct {v2}, Lbike/smarthalo/app/api/interceptors/SHInterceptor;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/api/interceptors/ValhallaApiKeyInterceptor;

    invoke-direct {v2, p1}, Lbike/smarthalo/app/api/interceptors/ValhallaApiKeyInterceptor;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 49
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p1, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 50
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    new-instance p1, Lretrofit2/Retrofit$Builder;

    invoke-direct {p1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 54
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 55
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->callFactory(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/valhalla/ValhallaApi;->retrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static buildValhallaDirectionsApi(Lbike/smarthalo/app/managers/KeyManager;Z)Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;
    .locals 1
    .param p0    # Lbike/smarthalo/app/managers/KeyManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    new-instance v0, Lbike/smarthalo/app/api/valhalla/ValhallaApi;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/api/valhalla/ValhallaApi;-><init>(Lbike/smarthalo/app/managers/KeyManager;Z)V

    .line 62
    iget-object p0, v0, Lbike/smarthalo/app/api/valhalla/ValhallaApi;->retrofit:Lretrofit2/Retrofit;

    const-class p1, Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/api/valhalla/ValhallaDirectionsApi;

    return-object p0
.end method
