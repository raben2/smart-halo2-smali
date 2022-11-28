.class public Lcom/instabug/apm/c/b;
.super Ljava/lang/Object;
.source "APMConfigurationHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/c/a;


# instance fields
.field private a:Lcom/instabug/apm/c/c;

.field private b:Lcom/instabug/apm/logger/a/a;


# direct methods
.method public constructor <init>(Lcom/instabug/apm/c/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->d()Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    .line 5
    iput-object p1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "launches"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->c(Z)V

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->f()V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "limit_per_request"

    const-wide/16 v1, 0x1f4

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/c/c;->b(J)V

    const-string v0, "store_limit"

    const-wide/16 v1, 0x9c4

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 16
    iget-object p1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/c/c;->a(J)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Can\'t parse app launches configurations, object is null."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->f()V

    .line 21
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->a()V

    :goto_0
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "traces"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->a(Z)V

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "limit_per_request"

    const-wide/16 v1, 0x1f4

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/c/c;->f(J)V

    const-string v0, "store_limit"

    const-wide/16 v1, 0x9c4

    .line 14
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/c/c;->d(J)V

    const-string v0, "store_attributes_limit"

    const/4 v1, 0x5

    .line 18
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/apm/c/c;->a(I)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Can\'t parse execution traces configurations, object is null."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->c()V

    .line 25
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->b()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/instabug/apm/e/a;->c()Lcom/instabug/apm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/a;->d()V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "network"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->j(Z)V

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->h()V

    .line 8
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->d()V

    :cond_0
    const-string v0, "limit_per_request"

    const-wide/16 v1, 0x1f4

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/c/c;->g(J)V

    const-string v0, "store_limit"

    const-wide/16 v1, 0x9c4

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 17
    iget-object p1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/c/c;->c(J)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Can\'t parse network logs configurations, object is null."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->h()V

    .line 21
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->d()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/apm/e/a;->c()Lcom/instabug/apm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/a;->e()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->b(J)V

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x9c4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->a(J)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->d(Z)V

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x5460

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->i(J)V

    .line 5
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->h()V

    .line 6
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->d()V

    .line 7
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->i()V

    .line 8
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->e()V

    .line 9
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->c()V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->b()V

    .line 11
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->f()V

    .line 12
    invoke-virtual {p0}, Lcom/instabug/apm/c/b;->a()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->j(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->g(J)V

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x9c4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->c(J)V

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->h(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->h(J)V

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x9c4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->e(J)V

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const v1, 0x48742400    # 250000.0f

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->b(F)V

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const v1, 0x46827800    # 16700.0f

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->a(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 59
    invoke-static {}, Lcom/instabug/apm/e/a;->c()Lcom/instabug/apm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/a;->a()V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ui"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->h(Z)V

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->i()V

    .line 67
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->e()V

    goto :goto_0

    :cond_0
    const-string v0, "small_drop_duration_mus"

    const-wide v1, 0x40d04f0000000000L    # 16700.0

    .line 70
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 72
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->a(F)V

    const-string v0, "large_drop_duration_mus"

    const-wide v1, 0x410e848000000000L    # 250000.0

    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 76
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v0}, Lcom/instabug/apm/c/c;->b(F)V

    const-string v0, "limit_per_request"

    const-wide/16 v1, 0x1f4

    .line 78
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v0, v1}, Lcom/instabug/apm/c/c;->h(J)V

    const-string v0, "store_limit"

    const-wide/16 v1, 0x9c4

    .line 82
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 84
    iget-object p1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {p1, v0, v1}, Lcom/instabug/apm/c/c;->e(J)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v0, "Can\'t parse ui traces configurations, object is null."

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->i()V

    .line 89
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->e()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "apm"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "enabled"

    .line 5
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v1}, Lcom/instabug/apm/c/c;->f(Z)V

    const-string v1, "crash_detection_enabled"

    .line 8
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v1}, Lcom/instabug/apm/c/c;->b(Z)V

    const-string v1, "debug_mode_enabled"

    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 14
    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v2, v1}, Lcom/instabug/apm/c/c;->d(Z)V

    const-string v1, "sync_interval"

    const-wide/16 v2, 0x5460

    .line 16
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 17
    iget-object v3, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v3, v1, v2}, Lcom/instabug/apm/c/c;->i(J)V

    const-string v1, "disabled_android_sdk_versions"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 21
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    .line 22
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 23
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {v1, v2}, Lcom/instabug/apm/c/c;->a(Ljava/util/Set;)V

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/apm/c/b;->b(Lorg/json/JSONObject;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/instabug/apm/c/b;->c(Lorg/json/JSONObject;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/instabug/apm/c/b;->d(Lorg/json/JSONObject;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/instabug/apm/c/b;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v1, "Can\'t parse APM configurations, object is null."

    invoke-virtual {p1, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38
    iget-object v1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2, p1}, Lcom/instabug/apm/logger/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    invoke-interface {p1}, Lcom/instabug/apm/c/c;->y()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 42
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APM feature configs: \nEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    .line 43
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nTraces Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    .line 44
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->t()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nApp Launches Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    .line 45
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nNetwork Logs Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    .line 46
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nUI Traces Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    .line 47
    invoke-interface {v2}, Lcom/instabug/apm/c/c;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    goto :goto_4

    .line 56
    :cond_5
    iget-object p1, p0, Lcom/instabug/apm/c/b;->b:Lcom/instabug/apm/logger/a/a;

    const-string v1, "APM feature configs: \nEnabled: false"

    invoke-virtual {p1, v1}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/instabug/apm/c/b;->g()V

    :goto_4
    return v0
.end method

.method public b()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/instabug/apm/e/a;->c()Lcom/instabug/apm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/a;->c()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->a(Z)V

    .line 27
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->f(J)V

    .line 28
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const-wide/16 v1, 0x9c4

    invoke-interface {v0, v1, v2}, Lcom/instabug/apm/c/c;->d(J)V

    .line 29
    iget-object v0, p0, Lcom/instabug/apm/c/b;->a:Lcom/instabug/apm/c/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/instabug/apm/c/c;->a(I)V

    return-void
.end method
