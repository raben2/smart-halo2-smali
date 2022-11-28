.class public Lcom/instabug/featuresrequest/f/a;
.super Ljava/lang/Object;
.source "FeaturesRequestSettings.java"


# static fields
.field private static a:Lcom/instabug/featuresrequest/f/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/featuresrequest/f/c;->a(I)V

    return-void
.end method

.method public static e()Lcom/instabug/featuresrequest/f/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/f/a;->a:Lcom/instabug/featuresrequest/f/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/featuresrequest/f/a;

    invoke-direct {v0}, Lcom/instabug/featuresrequest/f/a;-><init>()V

    sput-object v0, Lcom/instabug/featuresrequest/f/a;->a:Lcom/instabug/featuresrequest/f/a;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/featuresrequest/f/a;->a:Lcom/instabug/featuresrequest/f/a;

    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/c;->b()I

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/c;->b()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 5
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/c;->c()Lcom/instabug/featuresrequest/f/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/instabug/featuresrequest/f/c;->a(J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/b;->c()Lcom/instabug/featuresrequest/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/f/b;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/b;->c()Lcom/instabug/featuresrequest/f/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/f/b;->b(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/f/b;->c()Lcom/instabug/featuresrequest/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/b;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->isExperimentalFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v1

    .line 3
    sget-object v2, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v2}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/b;->c()Lcom/instabug/featuresrequest/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/b;->b()Z

    move-result v0

    return v0
.end method
