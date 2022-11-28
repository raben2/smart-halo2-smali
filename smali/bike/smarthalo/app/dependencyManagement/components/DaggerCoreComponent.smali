.class public final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"

# interfaces
.implements Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;,
        Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    }
.end annotation


# instance fields
.field private provideAnalyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthenticationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/ConnectivityManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideFitnessStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideGPXParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/gpx/GPXParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideJobServiceCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private providePowerSavingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private providedUserStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private providesContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->initialize(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)V

    return-void
.end method

.method static synthetic access$2200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAuthenticationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providedUserStorageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideSettingStorageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providePowerSavingManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAppStorageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideJobServiceCreatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGPXParserProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideFitnessStorageManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
    .locals 0

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->getGeocodingManager()Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 144
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 2

    .line 182
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method private getGeocodingManager()Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
    .locals 2

    .line 186
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initialize(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)V
    .locals 10

    .line 193
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule_ProvideKeyManagerFactory;

    move-result-object v0

    .line 192
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    .line 195
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)Lbike/smarthalo/app/dependencyManagement/modules/ContextModule_ProvidesContextFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 199
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 198
    invoke-static {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule_ProvideAnalyticsManagerFactory;

    move-result-object v0

    .line 197
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 201
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideGsonFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideGsonFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    .line 204
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;

    move-result-object v0

    .line 203
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;

    .line 208
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;

    .line 207
    invoke-static {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideOkHttpClientFactory;

    move-result-object v0

    .line 206
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    .line 212
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    .line 211
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideRetrofitFactory;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 216
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule_ProvidedUserStorageManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule_ProvidedUserStorageManagerFactory;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providedUserStorageManagerProvider:Ljavax/inject/Provider;

    .line 220
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;

    move-result-object v0

    .line 218
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideFitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 224
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 223
    invoke-static {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule_ProvideJobServiceCreatorFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule_ProvideJobServiceCreatorFactory;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideJobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 228
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideRetrofitProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGsonProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providedUserStorageManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideFitnessStorageManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideJobServiceCreatorProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 227
    invoke-static/range {v1 .. v9}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;

    move-result-object v0

    .line 226
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAuthenticationManagerProvider:Ljavax/inject/Provider;

    .line 240
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;

    move-result-object v0

    .line 238
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideSettingStorageManagerProvider:Ljavax/inject/Provider;

    .line 244
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$1000(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;

    move-result-object v0

    .line 242
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAppStorageManagerProvider:Ljavax/inject/Provider;

    .line 248
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$1100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAppStorageManagerProvider:Ljavax/inject/Provider;

    .line 247
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;

    move-result-object v0

    .line 246
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providePowerSavingManagerProvider:Ljavax/inject/Provider;

    .line 254
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$1200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 253
    invoke-static {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;

    move-result-object v0

    .line 252
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideGPXParserProvider:Ljavax/inject/Provider;

    .line 258
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->access$1300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providesContextProvider:Ljavax/inject/Provider;

    .line 257
    invoke-static {p1, v0}, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule_ProvideConnectivityManagerFactory;->create(Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule_ProvideConnectivityManagerFactory;

    move-result-object p1

    .line 256
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideConnectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectAlarmViewFragment(Llayout/AlarmViewFragment;)Llayout/AlarmViewFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 391
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 392
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 391
    invoke-static {p1, v0}, Llayout/AlarmViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/AlarmViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectAssistantNotificationsActivity(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)Lbike/smarthalo/app/activities/AssistantNotificationsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 420
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 421
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 420
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 422
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideSettingStorageManagerProvider:Ljavax/inject/Provider;

    .line 423
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 422
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    return-object p1
.end method

.method private injectAssistantViewFragment(Llayout/AssistantViewFragment;)Llayout/AssistantViewFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 405
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 406
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 405
    invoke-static {p1, v0}, Llayout/AssistantViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/AssistantViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectConnectToNewDeviceActivity(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 437
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 437
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectLeftDrawerLayout(Llayout/LeftDrawerLayout;)Llayout/LeftDrawerLayout;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 384
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 385
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 384
    invoke-static {p1, v0}, Llayout/LeftDrawerLayout_MembersInjector;->injectAnalyticsManager(Llayout/LeftDrawerLayout;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectLightViewFragment(Llayout/LightViewFragment;)Llayout/LightViewFragment;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 398
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 399
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 398
    invoke-static {p1, v0}, Llayout/LightViewFragment_MembersInjector;->injectAnalyticsManager(Llayout/LightViewFragment;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectMainApplication(Lbike/smarthalo/app/MainApplication;)Lbike/smarthalo/app/MainApplication;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 458
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/MainApplication_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/MainApplication;Lbike/smarthalo/app/managers/KeyManager;)V

    return-object p1
.end method

.method private injectPermissionsActivity(Lbike/smarthalo/app/permissions/PermissionsActivity;)Lbike/smarthalo/app/permissions/PermissionsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 451
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 452
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 451
    invoke-static {p1, v0}, Lbike/smarthalo/app/permissions/PermissionsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/permissions/PermissionsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectSHDirectionService(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/navigation/SHDirectionService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 366
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideKeyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/KeyManager;

    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectKeyManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/managers/KeyManager;)V

    .line 367
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->getGeocodingManager()Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    move-result-object v0

    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectGeocodingManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;)V

    .line 368
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 369
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 368
    invoke-static {p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectScanResultsActivity(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/app/activities/ScanResultsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 444
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 445
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 444
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectTapCodeActivity(Lbike/smarthalo/app/activities/TapCodeActivity;)Lbike/smarthalo/app/activities/TapCodeActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 412
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 413
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 412
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/TapCodeActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/TapCodeActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method

.method private injectTokenRefreshJobService(Lbike/smarthalo/app/services/TokenRefreshJobService;)Lbike/smarthalo/app/services/TokenRefreshJobService;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 375
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAuthenticationManagerProvider:Ljavax/inject/Provider;

    .line 376
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 375
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->injectAuthenticationManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    .line 377
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->providedUserStorageManagerProvider:Ljavax/inject/Provider;

    .line 378
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 377
    invoke-static {p1, v0}, Lbike/smarthalo/app/services/TokenRefreshJobService_MembersInjector;->injectUserStorageManager(Lbike/smarthalo/app/services/TokenRefreshJobService;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;)V

    return-object p1
.end method

.method private injectTouchInputsActivity(Lbike/smarthalo/app/activities/TouchInputsActivity;)Lbike/smarthalo/app/activities/TouchInputsActivity;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 429
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->provideAnalyticsManagerProvider:Ljavax/inject/Provider;

    .line 430
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 429
    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/TouchInputsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object p1
.end method


# virtual methods
.method public add(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FirmwareUpdateComponent;
    .locals 2

    .line 351
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FirmwareUpdateComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public add(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;
    .locals 2

    .line 336
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$FitnessManagersComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public add(Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;
    .locals 2

    .line 341
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$GeocodingManagerComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public add(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/StravaCloudManagerComponent;
    .locals 2

    .line 346
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$StravaCloudManagerComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public add(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/UserManagersComponent;
    .locals 2

    .line 331
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$UserManagersComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public addAuthenticationComponent()Lbike/smarthalo/app/dependencyManagement/components/AuthenticationComponent;
    .locals 2

    .line 361
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$AuthenticationComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public addCentralServiceComponent()Lbike/smarthalo/app/dependencyManagement/components/CentralServiceComponent;
    .locals 2

    .line 356
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$CentralServiceComponentImpl;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public inject(Lbike/smarthalo/app/MainApplication;)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectMainApplication(Lbike/smarthalo/app/MainApplication;)Lbike/smarthalo/app/MainApplication;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectAssistantNotificationsActivity(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)Lbike/smarthalo/app/activities/AssistantNotificationsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectConnectToNewDeviceActivity(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/LaunchActivity;)V
    .locals 0

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectScanResultsActivity(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/app/activities/ScanResultsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/TapCodeActivity;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectTapCodeActivity(Lbike/smarthalo/app/activities/TapCodeActivity;)Lbike/smarthalo/app/activities/TapCodeActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/TouchInputsActivity;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectTouchInputsActivity(Lbike/smarthalo/app/activities/TouchInputsActivity;)Lbike/smarthalo/app/activities/TouchInputsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectSHDirectionService(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/navigation/SHDirectionService;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/permissions/PermissionsActivity;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectPermissionsActivity(Lbike/smarthalo/app/permissions/PermissionsActivity;)Lbike/smarthalo/app/permissions/PermissionsActivity;

    return-void
.end method

.method public inject(Lbike/smarthalo/app/services/TokenRefreshJobService;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectTokenRefreshJobService(Lbike/smarthalo/app/services/TokenRefreshJobService;)Lbike/smarthalo/app/services/TokenRefreshJobService;

    return-void
.end method

.method public inject(Llayout/AlarmViewFragment;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectAlarmViewFragment(Llayout/AlarmViewFragment;)Llayout/AlarmViewFragment;

    return-void
.end method

.method public inject(Llayout/AssistantViewFragment;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectAssistantViewFragment(Llayout/AssistantViewFragment;)Llayout/AssistantViewFragment;

    return-void
.end method

.method public inject(Llayout/LeftDrawerLayout;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectLeftDrawerLayout(Llayout/LeftDrawerLayout;)Llayout/LeftDrawerLayout;

    return-void
.end method

.method public inject(Llayout/LightViewFragment;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;->injectLightViewFragment(Llayout/LightViewFragment;)Llayout/LightViewFragment;

    return-void
.end method
