.class public Lcom/instabug/library/model/j$a;
.super Ljava/lang/Object;
.source "UserStep.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/instabug/library/model/j$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
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

.method public constructor <init>(Lcom/instabug/library/model/j$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/j$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/instabug/library/model/j$a;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/instabug/library/model/j$a;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/instabug/library/model/j$a;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/instabug/library/model/j$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j$a;->a:Lcom/instabug/library/model/j$b;

    return-object v0
.end method

.method public a(Lcom/instabug/library/model/j$b;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/j$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/j$a;->a:Lcom/instabug/library/model/j$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/instabug/library/model/j$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/j$a;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/j$a;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j$a;->d:Ljava/lang/String;

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

    const-string p1, "event"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "event"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "double_tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_2
    const-string v2, "swipe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "pinch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "view"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "tap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "pan"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "scroll"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "motion"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 32
    sget-object p1, Lcom/instabug/library/model/j$b;->NOT_AVAILABLE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 33
    :pswitch_0
    sget-object p1, Lcom/instabug/library/model/j$b;->DOUBLE_TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 34
    :pswitch_1
    sget-object p1, Lcom/instabug/library/model/j$b;->SWIPE:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/instabug/library/model/j$b;->SCROLL:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 36
    :pswitch_3
    sget-object p1, Lcom/instabug/library/model/j$b;->LONG_PRESS:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 37
    :pswitch_4
    sget-object p1, Lcom/instabug/library/model/j$b;->PINCH:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 38
    :pswitch_5
    sget-object p1, Lcom/instabug/library/model/j$b;->TAP:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 39
    :pswitch_6
    sget-object p1, Lcom/instabug/library/model/j$b;->MOTION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 40
    :pswitch_7
    sget-object p1, Lcom/instabug/library/model/j$b;->VIEW:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    goto :goto_1

    .line 41
    :pswitch_8
    sget-object p1, Lcom/instabug/library/model/j$b;->APPLICATION:Lcom/instabug/library/model/j$b;

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Lcom/instabug/library/model/j$b;)V

    :cond_1
    :goto_1
    const-string p1, "class"

    .line 72
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "class"

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->b(Ljava/lang/String;)V

    :cond_2
    const-string p1, "label"

    .line 74
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "label"

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->a(Ljava/lang/String;)V

    :cond_3
    const-string p1, "view"

    .line 76
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "view"

    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/model/j$a;->c(Ljava/lang/String;)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3fad404a -> :sswitch_8
        -0x361a1933 -> :sswitch_7
        0x1b09d -> :sswitch_6
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
    .locals 3
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
    invoke-virtual {p0}, Lcom/instabug/library/model/j$a;->a()Lcom/instabug/library/model/j$b;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/model/j$a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/model/j$a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lcom/instabug/library/model/j$a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
