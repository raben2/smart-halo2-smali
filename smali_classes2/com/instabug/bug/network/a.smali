.class public Lcom/instabug/bug/network/a;
.super Ljava/lang/Object;
.source "BugUploaderHelper.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/network/a;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/instabug/bug/model/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attachments related to bug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugUploaderHelper"

    .line 46
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/instabug/bug/network/b;->a()Lcom/instabug/bug/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/bug/network/a$c;

    invoke-direct {v2, p0, p1}, Lcom/instabug/bug/network/a$c;-><init>(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/bug/network/b;->b(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/network/a;->b(Lcom/instabug/bug/model/a;)V

    return-void
.end method

.method private b(Lcom/instabug/bug/model/a;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START uploading all logs related to this bug id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/bug/model/a;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BugUploaderHelper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/bug/network/b;->a()Lcom/instabug/bug/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/bug/network/a$b;

    invoke-direct {v2, p0, p1}, Lcom/instabug/bug/network/a$b;-><init>(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/bug/network/b;->c(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method

.method static synthetic b(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/bug/network/a;->a(Lcom/instabug/bug/model/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instabug/bug/g/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bugs in cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BugUploaderHelper"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/bug/model/a;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->b()Lcom/instabug/bug/model/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/bug/model/a$a;->READY_TO_BE_SENT:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading bug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugUploaderHelper"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/bug/network/b;->a()Lcom/instabug/bug/network/b;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/bug/network/a;->a:Landroid/content/Context;

    new-instance v4, Lcom/instabug/bug/network/a$a;

    invoke-direct {v4, p0, v1}, Lcom/instabug/bug/network/a$a;-><init>(Lcom/instabug/bug/network/a;Lcom/instabug/bug/model/a;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/instabug/bug/network/b;->a(Landroid/content/Context;Lcom/instabug/bug/model/a;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->b()Lcom/instabug/bug/model/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/bug/model/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent logs, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugUploaderHelper"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, v1}, Lcom/instabug/bug/network/a;->b(Lcom/instabug/bug/model/a;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->b()Lcom/instabug/bug/model/a$a;

    move-result-object v2

    sget-object v3, Lcom/instabug/bug/model/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/bug/model/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already uploaded but has unsent attachments, uploading now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugUploaderHelper"

    invoke-static {v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v1}, Lcom/instabug/bug/network/a;->a(Lcom/instabug/bug/model/a;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
