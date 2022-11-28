.class public Lcom/instabug/featuresrequest/d/d;
.super Lcom/instabug/featuresrequest/d/a;
.source "NewComment.java"


# instance fields
.field private k:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_INITIALIZED"
        }
    .end annotation
.end field

.field private l:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/d/a;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/instabug/featuresrequest/d/d;->c(J)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/instabug/featuresrequest/d/f;->a(J)V

    .line 4
    invoke-virtual {p0, p4}, Lcom/instabug/featuresrequest/d/a;->d(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p5}, Lcom/instabug/featuresrequest/d/d;->f(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p3}, Lcom/instabug/featuresrequest/d/a;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/featuresrequest/d/d;->l:J

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/d/d;->k:Ljava/lang/String;

    return-void
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/featuresrequest/d/a;->fromJson(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "email"

    .line 5
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "email"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/d/d;->f(Ljava/lang/String;)V

    :cond_0
    const-string p1, "feature_id"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "feature_id"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/featuresrequest/d/d;->c(J)V

    :cond_1
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/featuresrequest/d/d;->l:J

    return-wide v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-super {p0}, Lcom/instabug/featuresrequest/d/a;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/d;->l()J

    move-result-wide v1

    const-string v3, "feature_id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/d/d;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
