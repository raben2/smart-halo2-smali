.class public Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "FeaturesRequestVoteService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "FeaturesRequestVoteService"

    const-string v1, "submitVotes started"

    .line 2
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/featuresrequest/cache/a;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/featuresrequest/d/b;

    .line 5
    sget-object v2, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService$b;->a:[I

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/d/b;->n()Lcom/instabug/featuresrequest/d/b$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Delete:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-direct {p0, v1, v2}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/library/network/Request$RequestMethod;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-direct {p0, v1, v2}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/library/network/Request$RequestMethod;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;

    const/16 v1, 0xa18

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/library/network/Request$RequestMethod;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/instabug/featuresrequest/network/service/b;->a()Lcom/instabug/featuresrequest/network/service/b;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->g()J

    move-result-wide v2

    new-instance v5, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService$a;

    invoke-direct {v5, p0, p1}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService$a;-><init>(Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;Lcom/instabug/featuresrequest/d/b;)V

    move-object v1, p0

    move-object v4, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/instabug/featuresrequest/network/service/b;->a(Landroid/content/Context;JLcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "FeaturesRequestVoteService"

    const-string v1, "runBackgroundTask started"

    .line 1
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;->a()V

    return-void
.end method
