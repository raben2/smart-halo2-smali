.class public final Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;
.super Ljava/lang/Object;
.source "SHApiModule_ProvideOkHttpClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    .line 18
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->loggingInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideOkHttpClient(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideOkHttpClient(Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/OkHttpClient;
    .locals 2

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->loggingInterceptorProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideOkHttpClient(Lokhttp3/logging/HttpLoggingInterceptor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method
