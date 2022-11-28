.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;
.super Ljava/lang/Object;
.source "ApiClientModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 47
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 48
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    return-void
.end method


# virtual methods
.method providesApiClient(Lcom/google/firebase/inappmessaging/dagger/Lazy;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;)Lcom/google/firebase/inappmessaging/internal/ApiClient;
    .locals 7
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation build Lcom/google/firebase/inappmessaging/internal/injection/scopes/FirebaseAppScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/dagger/Lazy<",
            "Lcom/google/firebase/inappmessaging/internal/GrpcClient;",
            ">;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;",
            ")",
            "Lcom/google/firebase/inappmessaging/internal/ApiClient;"
        }
    .end annotation

    .line 81
    new-instance v6, Lcom/google/firebase/inappmessaging/internal/ApiClient;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/internal/ApiClient;-><init>(Lcom/google/firebase/inappmessaging/dagger/Lazy;Lcom/google/firebase/FirebaseApp;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;)V

    return-object v6
.end method

.method providesDataCollectionHelper(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;Lcom/google/firebase/events/Subscriber;)Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 69
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;Lcom/google/firebase/events/Subscriber;)V

    return-object v0
.end method

.method providesFirebaseApp()Lcom/google/firebase/FirebaseApp;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method providesFirebaseInstallations()Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    return-object v0
.end method

.method providesSharedPreferencesUtils()Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 63
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method

.method providesTestDeviceHelper(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 74
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;-><init>(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)V

    return-object v0
.end method
