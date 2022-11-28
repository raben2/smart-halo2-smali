.class public Lcom/instabug/anr/network/InstabugAnrUploaderService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugAnrUploaderService.java"


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

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ANRs in cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstabugAnrUploaderService"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/d/a;

    .line 9
    invoke-virtual {v1}, La/a/a/d/a;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading anr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugAnrUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/instabug/anr/network/a;->a()Lcom/instabug/anr/network/a;

    move-result-object v2

    new-instance v3, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;

    invoke-direct {v3, p0, v1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$a;-><init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V

    invoke-virtual {v2, p0, v1, v3}, Lcom/instabug/anr/network/a;->a(Landroid/content/Context;La/a/a/d/a;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v1}, La/a/a/d/a;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent logs, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugAnrUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, v1}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->b(La/a/a/d/a;)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v1}, La/a/a/d/a;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent attachments, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InstabugAnrUploaderService"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, v1}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(La/a/a/d/a;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private a(La/a/a/d/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, La/a/a/d/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachments related to ANR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1}, La/a/a/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugAnrUploaderService"

    .line 49
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/instabug/anr/network/a;->a()Lcom/instabug/anr/network/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;

    invoke-direct {v1, p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$c;-><init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/instabug/anr/network/a;->b(Landroid/content/Context;La/a/a/d/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2
    const-class v0, Lcom/instabug/anr/network/InstabugAnrUploaderService;

    const/16 v1, 0x6068

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->b(La/a/a/d/a;)V

    return-void
.end method

.method private b(La/a/a/d/a;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START uploading all logs related to this ANR id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, La/a/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugAnrUploaderService"

    .line 4
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/instabug/anr/network/a;->a()Lcom/instabug/anr/network/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService$b;-><init>(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/instabug/anr/network/a;->c(Landroid/content/Context;La/a/a/d/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/anr/network/InstabugAnrUploaderService;La/a/a/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a(La/a/a/d/a;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/anr/network/InstabugAnrUploaderService;->a()V

    return-void
.end method
