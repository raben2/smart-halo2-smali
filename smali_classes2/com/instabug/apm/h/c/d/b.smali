.class public Lcom/instabug/apm/h/c/d/b;
.super Ljava/lang/Object;
.source "SessionMapperImpl.java"

# interfaces
.implements Lcom/instabug/apm/h/c/d/a;


# instance fields
.field private a:Lcom/instabug/apm/h/c/a/a;

.field private b:Lcom/instabug/apm/h/c/c/a;

.field private c:Lcom/instabug/apm/h/c/b/a;

.field private d:Lcom/instabug/apm/h/c/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->h()Lcom/instabug/apm/h/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/h/c/d/b;->a:Lcom/instabug/apm/h/c/a/a;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->z()Lcom/instabug/apm/h/c/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/h/c/d/b;->b:Lcom/instabug/apm/h/c/c/a;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->v()Lcom/instabug/apm/h/c/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/h/c/d/b;->c:Lcom/instabug/apm/h/c/b/a;

    .line 6
    invoke-static {}, Lcom/instabug/apm/e/a;->L()Lcom/instabug/apm/h/c/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/h/c/d/b;->d:Lcom/instabug/apm/h/c/e/a;

    return-void
.end method

.method private a(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/instabug/apm/h/c/d/b;->a:Lcom/instabug/apm/h/c/a/a;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/apm/h/c/a/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/e;->b()I

    move-result v1

    if-lez v1, :cond_5

    .line 26
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "ll"

    .line 28
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->a()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "dcrl"

    .line 34
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->b()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/e;->a()I

    move-result v2

    sub-int/2addr v0, v2

    .line 38
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz v0, :cond_4

    const-string p1, "dcsl"

    .line 40
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "ls"

    .line 43
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method

.method private b(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/h/c/d/b;->c:Lcom/instabug/apm/h/c/b/a;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/apm/h/c/b/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/e;->d()I

    move-result v1

    if-lez v1, :cond_5

    .line 7
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "tl"

    .line 9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->c()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "dcrl"

    .line 15
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->d()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/e;->c()I

    move-result v2

    sub-int/2addr v0, v2

    .line 19
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz v0, :cond_4

    const-string p1, "dcsl"

    .line 21
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "ts"

    .line 24
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method

.method private c(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/h/c/d/b;->b:Lcom/instabug/apm/h/c/c/a;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/apm/h/c/c/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/e;->f()I

    move-result v1

    if-lez v1, :cond_5

    .line 8
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "nl"

    .line 10
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->e()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "dcrl"

    .line 16
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->f()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/e;->e()I

    move-result v2

    sub-int/2addr v0, v2

    .line 20
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz v0, :cond_4

    const-string p1, "dcsl"

    .line 22
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "nts"

    .line 25
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method

.method private d(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/h/c/d/b;->d:Lcom/instabug/apm/h/c/e/a;

    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/apm/h/c/e/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/e;->h()I

    move-result v1

    if-lez v1, :cond_5

    .line 8
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "uil"

    .line 10
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->g()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "dcrl"

    .line 16
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/apm/b/b/e;->h()I

    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->f()Lcom/instabug/apm/b/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/e;->g()I

    move-result v2

    sub-int/2addr v0, v2

    .line 20
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/d;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr v0, p1

    if-eqz v0, :cond_4

    const-string p1, "dcsl"

    .line 22
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "uis"

    .line 25
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/d;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/b/b/d;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->getOs()Ljava/lang/String;

    move-result-object v3

    const-string v4, "os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->getUuid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "av"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->getStartTimestampMicros()J

    move-result-wide v3

    const-string v5, "st"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->g()I

    move-result v3

    const-string v4, "sec"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->c()J

    move-result-wide v3

    const-string v5, "sd"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/instabug/apm/h/c/d/b;->a(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V

    .line 15
    invoke-direct {p0, v1, v2}, Lcom/instabug/apm/h/c/d/b;->c(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/instabug/apm/h/c/d/b;->b(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V

    .line 17
    invoke-direct {p0, v1, v2}, Lcom/instabug/apm/h/c/d/b;->d(Lcom/instabug/apm/b/b/d;Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method
