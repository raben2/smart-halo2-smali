.class public Lcom/instabug/library/model/j;
.super Ljava/lang/Object;
.source "UserStep.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/model/j$a;,
        Lcom/instabug/library/model/j$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/library/model/j$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/instabug/library/model/j$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/instabug/library/model/j;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Lcom/instabug/library/model/j;

    invoke-direct {v2}, Lcom/instabug/library/model/j;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/model/j;->fromJson(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/model/j;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/model/j;

    .line 11
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/instabug/library/model/j;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserStep"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/instabug/library/model/j$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/instabug/library/model/j;->d:Lcom/instabug/library/model/j$a;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/instabug/library/model/j;->a:J

    return-void
.end method

.method public a(Lcom/instabug/library/model/j$a;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/j$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    iput-object p1, p0, Lcom/instabug/library/model/j;->d:Lcom/instabug/library/model/j$a;

    return-void
.end method

.method public a(Lcom/instabug/library/model/j$b;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/j$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/instabug/library/model/j;->c:Lcom/instabug/library/model/j$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/instabug/library/model/j;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/instabug/library/model/j$b;->NOT_AVAILABLE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DOUBLE_TAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "LONG_PRESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SWIPE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "SHAKE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "PINCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "TAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const-string v1, "APPLICATION_CREATED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "SCROLL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 29
    sget-object p1, Lcom/instabug/library/model/j$b;->VIEW:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 30
    :pswitch_0
    sget-object p1, Lcom/instabug/library/model/j$b;->APPLICATION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 31
    :pswitch_1
    sget-object p1, Lcom/instabug/library/model/j$b;->MOTION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/instabug/library/model/j$b;->PINCH:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 33
    :pswitch_3
    sget-object p1, Lcom/instabug/library/model/j$b;->SWIPE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 34
    :pswitch_4
    sget-object p1, Lcom/instabug/library/model/j$b;->SCROLL:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 35
    :pswitch_5
    sget-object p1, Lcom/instabug/library/model/j$b;->LONG_PRESS:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 36
    :pswitch_6
    sget-object p1, Lcom/instabug/library/model/j$b;->DOUBLE_TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 37
    :pswitch_7
    sget-object p1, Lcom/instabug/library/model/j$b;->TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e872533 -> :sswitch_7
        -0x6232e547 -> :sswitch_6
        0x14383 -> :sswitch_5
        0x489b49a -> :sswitch_4
        0x4b356e6 -> :sswitch_3
        0x4ba471a -> :sswitch_2
        0x400c00a0 -> :sswitch_1
        0x4b689215 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/j;->a:J

    return-wide v0
.end method

.method public d()Lcom/instabug/library/model/j$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j;->c:Lcom/instabug/library/model/j$b;

    return-object v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "timestamp"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "timestamp"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/util/StringUtility;->isNumeric(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "timestamp"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/model/j;->a(J)V

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "timestamp"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/instabug/library/model/j;->a(J)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UserStep"

    invoke-static {v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, "message"

    .line 20
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "message"

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Ljava/lang/String;)V

    :cond_2
    const-string p1, "type"

    .line 22
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "type"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v2, "swipe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "pinch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "view"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "long_press"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "scroll"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v2, "motion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 52
    sget-object p1, Lcom/instabug/library/model/j$b;->NOT_AVAILABLE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 53
    :pswitch_0
    sget-object p1, Lcom/instabug/library/model/j$b;->DOUBLE_TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 54
    :pswitch_1
    sget-object p1, Lcom/instabug/library/model/j$b;->SWIPE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 55
    :pswitch_2
    sget-object p1, Lcom/instabug/library/model/j$b;->SCROLL:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 56
    :pswitch_3
    sget-object p1, Lcom/instabug/library/model/j$b;->LONG_PRESS:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 57
    :pswitch_4
    sget-object p1, Lcom/instabug/library/model/j$b;->PINCH:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 58
    :pswitch_5
    sget-object p1, Lcom/instabug/library/model/j$b;->TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 59
    :pswitch_6
    sget-object p1, Lcom/instabug/library/model/j$b;->MOTION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 60
    :pswitch_7
    sget-object p1, Lcom/instabug/library/model/j$b;->VIEW:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_2

    .line 61
    :pswitch_8
    sget-object p1, Lcom/instabug/library/model/j$b;->APPLICATION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$b;)V

    :cond_4
    :goto_2
    const-string p1, "args"

    .line 91
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 92
    new-instance p1, Lcom/instabug/library/model/j$a;

    invoke-direct {p1}, Lcom/instabug/library/model/j$a;-><init>()V

    const-string v1, "args"

    .line 93
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/model/j$a;->fromJson(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j;->a(Lcom/instabug/library/model/j$a;)V

    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3fad404a -> :sswitch_8
        -0x361a1933 -> :sswitch_7
        -0x1378ff40 -> :sswitch_6
        0x1bfa3 -> :sswitch_5
        0x373aa5 -> :sswitch_4
        0x65bacba -> :sswitch_3
        0x68c3f3a -> :sswitch_2
        0x2e701a35 -> :sswitch_1
        0x5ca40550 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toJson()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->c()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->d()Lcom/instabug/library/model/j$b;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->d()Lcom/instabug/library/model/j$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/model/j$b;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->a()Lcom/instabug/library/model/j$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/model/j;->a()Lcom/instabug/library/model/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/model/j$a;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserStep{timeStamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/instabug/library/model/j;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/model/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/model/j;->c:Lcom/instabug/library/model/j$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
