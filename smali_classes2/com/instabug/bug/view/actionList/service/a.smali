.class public Lcom/instabug/bug/view/actionList/service/a;
.super Ljava/lang/Object;
.source "ReportCategoriesServiceHelper.java"


# static fields
.field private static b:Lcom/instabug/bug/view/actionList/service/a;


# instance fields
.field private a:Lcom/instabug/library/network/NetworkManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/network/NetworkManager;

    invoke-direct {v0}, Lcom/instabug/library/network/NetworkManager;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/view/actionList/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    return-void
.end method

.method public static a()Lcom/instabug/bug/view/actionList/service/a;
    .locals 1

    .line 2
    sget-object v0, Lcom/instabug/bug/view/actionList/service/a;->b:Lcom/instabug/bug/view/actionList/service/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/bug/view/actionList/service/a;

    invoke-direct {v0}, Lcom/instabug/bug/view/actionList/service/a;-><init>()V

    sput-object v0, Lcom/instabug/bug/view/actionList/service/a;->b:Lcom/instabug/bug/view/actionList/service/a;

    .line 5
    :cond_0
    sget-object v0, Lcom/instabug/bug/view/actionList/service/a;->b:Lcom/instabug/bug/view/actionList/service/a;

    return-object v0
.end method

.method static a(J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/bug/settings/a;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/view/actionList/service/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/view/actionList/service/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/bug/settings/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static b()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/settings/a;->j()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ReportCategoriesServiceHelper"

    const-string v1, "Getting enabled features for this application"

    .line 7
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/bug/view/actionList/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    sget-object v1, Lcom/instabug/library/network/Request$Endpoint;->REPORT_CATEGORIES:Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/instabug/library/network/NetworkManager;->buildRequestWithoutUUID(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/instabug/bug/view/actionList/service/a;->a:Lcom/instabug/library/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/instabug/library/network/NetworkManager;->doRequest(Lcom/instabug/library/network/Request;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/bug/view/actionList/service/a$a;

    invoke-direct {v0, p0}, Lcom/instabug/bug/view/actionList/service/a$a;-><init>(Lcom/instabug/bug/view/actionList/service/a;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
