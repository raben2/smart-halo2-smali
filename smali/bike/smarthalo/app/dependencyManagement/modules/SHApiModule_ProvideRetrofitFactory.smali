.class public final Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;
.super Ljava/lang/Object;
.source "SHApiModule_ProvideRetrofitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    .line 23
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideRetrofit(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideRetrofit(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 3

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideRetrofit(Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method
