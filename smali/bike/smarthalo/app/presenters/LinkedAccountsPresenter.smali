.class public Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "LinkedAccountsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;


# static fields
.field public static final LINKED_ACCOUNT_BASE_URL:Ljava/lang/String; = "smarthalo://mobile.smarthalo.bike/integration/"

.field public static final STRAVA_URL_SUFFIX:Ljava/lang/String; = "strava"


# instance fields
.field private authenticateSubscription:Lio/reactivex/disposables/Disposable;

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;

.field stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;

    .line 37
    iput-object p3, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 38
    iput-object p4, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;)Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$Presenter;
    .locals 1

    .line 46
    new-instance v0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;)V

    return-object v0
.end method

.method private clearAuthenticationSubscription()V
    .locals 1

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->authenticateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->authenticateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$handleAuthenticationCallBack$0(Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    sget-object v0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter$1;->$SwitchMap$bike$smarthalo$app$managers$cloudManagers$UserCloudManager$CloudResult:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$CloudResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;->onNoNetwork()V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;->onError()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object p1, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LinkedAccountsPresenterContract$View;->onStravaAuthenticationSuccess()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getStravaAuthenticationUri()Landroid/net/Uri;
    .locals 4

    .line 92
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 94
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "www.strava.com"

    .line 95
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "oauth"

    .line 96
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mobile"

    .line 97
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "authorize"

    .line 98
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "client_id"

    iget-object v3, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    .line 99
    invoke-virtual {v3}, Lbike/smarthalo/app/managers/KeyManager;->getStravaClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "redirect_uri"

    const-string v3, "smarthalo://mobile.smarthalo.bike/integration/strava"

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "response_type"

    const-string v3, "code"

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "scope"

    const-string v3, "read,activity:write"

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public handleAuthenticationCallBack(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "strava"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "code"

    .line 58
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->clearAuthenticationSubscription()V

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->stravaCloudManager:Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    .line 64
    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;->authenticateWithStrava(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$LinkedAccountsPresenter$NAxUYogRDD8GFGwihg1cLgmbnEI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$LinkedAccountsPresenter$NAxUYogRDD8GFGwihg1cLgmbnEI;-><init>(Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;)V

    .line 65
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->authenticateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public hasStravaAccount()Z
    .locals 1

    .line 109
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onViewPaused()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/LinkedAccountsPresenter;->clearAuthenticationSubscription()V

    return-void
.end method
