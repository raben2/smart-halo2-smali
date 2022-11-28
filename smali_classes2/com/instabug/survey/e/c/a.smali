.class public Lcom/instabug/survey/e/c/a;
.super Ljava/lang/Object;
.source "ActionEvent.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/e/c/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/instabug/survey/e/c/a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:J

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/instabug/survey/e/c/a$a;JI)V
    .locals 0
    .param p1    # Lcom/instabug/survey/e/c/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/e/c/a;->a:Lcom/instabug/survey/e/c/a$a;

    .line 4
    iput-wide p2, p0, Lcom/instabug/survey/e/c/a;->b:J

    .line 5
    iput p4, p0, Lcom/instabug/survey/e/c/a;->c:I

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    new-instance v2, Lcom/instabug/survey/e/c/a;

    invoke-direct {v2}, Lcom/instabug/survey/e/c/a;-><init>()V

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/a;->fromJson(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/e/c/a;

    invoke-virtual {v3}, Lcom/instabug/survey/e/c/a;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Lcom/instabug/survey/e/c/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/e/c/a;->a:Lcom/instabug/survey/e/c/a$a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/instabug/survey/e/c/a;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/instabug/survey/e/c/a;->b:J

    return-void
.end method

.method public a(Lcom/instabug/survey/e/c/a$a;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/e/c/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/e/c/a;->a:Lcom/instabug/survey/e/c/a$a;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/e/c/a;->c:I

    return v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/e/c/a;->b:J

    return-wide v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "event_type"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "event_type"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3523bfe8    # -7217164.0f

    if-eq v2, v3, :cond_3

    const v3, 0x354ce0

    if-eq v2, v3, :cond_2

    const v3, 0x35dafd

    if-eq v2, v3, :cond_1

    const v3, 0x63a3b28a

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "dismiss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v2, "rate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "submit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 18
    sget-object p1, Lcom/instabug/survey/e/c/a$a;->UNDEFINED:Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(Lcom/instabug/survey/e/c/a$a;)V

    goto :goto_1

    .line 19
    :pswitch_0
    sget-object p1, Lcom/instabug/survey/e/c/a$a;->SHOW:Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(Lcom/instabug/survey/e/c/a$a;)V

    goto :goto_1

    .line 20
    :pswitch_1
    sget-object p1, Lcom/instabug/survey/e/c/a$a;->RATE:Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(Lcom/instabug/survey/e/c/a$a;)V

    goto :goto_1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/instabug/survey/e/c/a$a;->DISMISS:Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(Lcom/instabug/survey/e/c/a$a;)V

    goto :goto_1

    .line 22
    :pswitch_3
    sget-object p1, Lcom/instabug/survey/e/c/a$a;->SUBMIT:Lcom/instabug/survey/e/c/a$a;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(Lcom/instabug/survey/e/c/a$a;)V

    :cond_5
    :goto_1
    const-string p1, "index"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "index"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/e/c/a;->a(I)V

    :cond_6
    const-string p1, "timestamp"

    .line 40
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "timestamp"

    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/e/c/a;->a(J)V

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/e/c/a;->a()Lcom/instabug/survey/e/c/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/a$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/e/c/a;->b()I

    move-result v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-wide v1, p0, Lcom/instabug/survey/e/c/a;->b:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
