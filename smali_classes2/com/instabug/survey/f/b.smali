.class public Lcom/instabug/survey/f/b;
.super Ljava/lang/Object;
.source "SurveysFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/f/b$c;
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/survey/f/b$c;


# direct methods
.method public constructor <init>(Lcom/instabug/survey/f/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/f/b;->a:Lcom/instabug/survey/f/b$c;

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/f/b;)Lcom/instabug/survey/f/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/f/b;->a:Lcom/instabug/survey/f/b$c;

    return-object p0
.end method

.method private a()Z
    .locals 5

    .line 6
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/instabug/survey/g/c;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/instabug/library/util/DeviceStateProvider;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/instabug/survey/g/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/instabug/survey/g/c;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/instabug/survey/f/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/instabug/survey/network/service/a;->a()Lcom/instabug/survey/network/service/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/f/b$b;

    invoke-direct {v1, p0, p1}, Lcom/instabug/survey/f/b$b;-><init>(Lcom/instabug/survey/f/b;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/instabug/survey/network/service/a;->a(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/survey/h/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/survey/network/service/a;->a()Lcom/instabug/survey/network/service/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/f/b$a;

    invoke-direct {v1, p0}, Lcom/instabug/survey/f/b$a;-><init>(Lcom/instabug/survey/f/b;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/instabug/survey/network/service/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$Callbacks;)V

    :cond_0
    return-void
.end method
