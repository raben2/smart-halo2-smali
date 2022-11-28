.class public Lcom/instabug/survey/e/c/d;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/instabug/survey/e/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/survey/e/c/d;

    invoke-direct {v0}, Lcom/instabug/survey/e/c/d;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/instabug/survey/e/c/d;->a(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/instabug/survey/e/c/d;->b:I

    if-gtz v0, :cond_0

    const/16 v0, 0x1e

    .line 7
    iput v0, p0, Lcom/instabug/survey/e/c/d;->b:I

    .line 9
    :cond_0
    iget v0, p0, Lcom/instabug/survey/e/c/d;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/instabug/survey/e/c/d;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "frequency_type"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "frequency_type"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/d;->b(I)V

    :cond_0
    const-string p1, "showing_surveys_interval"

    const/16 v1, 0x1e

    .line 5
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/d;->a(I)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/instabug/survey/e/c/d;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/instabug/survey/e/c/d;->a:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/e/c/d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/e/c/d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/instabug/survey/e/c/d;->a:I

    const-string v2, "frequency_type"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p0, Lcom/instabug/survey/e/c/d;->b:I

    const-string v2, "showing_surveys_interval"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
