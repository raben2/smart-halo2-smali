.class public Lcom/instabug/apm/h/c/e/b;
.super Ljava/lang/Object;
.source "UiTraceMapperImpl.java"

# interfaces
.implements Lcom/instabug/apm/h/c/e/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_PARAMETER_NOT_NULLABLE"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/f;",
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

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/apm/b/b/f;

    .line 3
    invoke-virtual {p0, v1}, Lcom/instabug/apm/h/c/e/b;->a(Lcom/instabug/apm/b/b/f;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/instabug/apm/b/b/f;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->c()J

    move-result-wide v1

    const-string v3, "dmus"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->d()J

    move-result-wide v1

    const-string v3, "ldd"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->l()J

    move-result-wide v1

    const-string v3, "sdd"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->o()Z

    move-result v1

    const-string v2, "ud"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->m()J

    move-result-wide v1

    const-string v3, "st"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->i()I

    move-result v1

    const-string v2, "rr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->a()I

    move-result v1

    const-string v2, "bl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "snt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mn"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_4
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {p1}, Lcom/instabug/apm/b/b/f;->h()Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "pws"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method
