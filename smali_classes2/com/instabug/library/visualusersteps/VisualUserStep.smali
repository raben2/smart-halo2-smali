.class public Lcom/instabug/library/visualusersteps/VisualUserStep;
.super Ljava/lang/Object;
.source "VisualUserStep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "NM_METHOD_NAMING_CONVENTION"
    }
.end annotation


# static fields
.field private static final KEY_BUTTON_ICON:Ljava/lang/String; = "button_icon"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final KEY_IS_CONTAIN_ICON:Ljava/lang/String; = "is_contains"

.field private static final KEY_PARENT_SCREEN_ID:Ljava/lang/String; = "parent_screen_identifier"

.field private static final KEY_SCREENSHOT_ID:Ljava/lang/String; = "screenshot_identifier"

.field private static final KEY_SCREEN_ID:Ljava/lang/String; = "screen_identifier"

.field private static final KEY_SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field private static final KEY_VIEW:Ljava/lang/String; = "view"

.field private static final KEY_VIEW_ORIENTATION:Ljava/lang/String; = "orientation"


# instance fields
.field private buttonIcon:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private date:J

.field private isContainIcon:Z

.field private orientation:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentScreenId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private screenId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private screenName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private screenshotId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private stepType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private view:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    .line 3
    iput-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->stepType:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setParentScreenId(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setScreenName(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->c(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setScreenshotId(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setScreenId(Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->e(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setStepType(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setDate(J)V

    .line 20
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->g(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setView(Ljava/lang/String;)V

    .line 21
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->h(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setViewOrientation(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->i(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setButtonIcon(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->j(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setContainIcon(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/visualusersteps/VisualUserStep$b;Lcom/instabug/library/visualusersteps/VisualUserStep$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;-><init>(Lcom/instabug/library/visualusersteps/VisualUserStep$b;)V

    return-void
.end method

.method public static Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;-><init>(Ljava/lang/String;Lcom/instabug/library/visualusersteps/VisualUserStep$a;)V

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
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

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->fromJsonObject(Lorg/json/JSONObject;)Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromJsonObject(Lorg/json/JSONObject;)Lcom/instabug/library/visualusersteps/VisualUserStep;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "UNKNOWN"

    const-string v1, "event_type"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "event_type"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "screen_name"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "screen_name"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "screen_identifier"

    .line 11
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "screen_identifier"

    .line 12
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    const-string v4, "screenshot_identifier"

    .line 15
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "screenshot_identifier"

    .line 16
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    const-string v5, "date"

    .line 19
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "date"

    .line 20
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    const-string v6, "parent_screen_identifier"

    .line 23
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "parent_screen_identifier"

    .line 24
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v2

    :goto_4
    const-string v7, "is_contains"

    .line 27
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    const-string v7, "is_contains"

    .line 28
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    const-string v9, "button_icon"

    .line 31
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "button_icon"

    .line 32
    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    move-object v9, v2

    :goto_6
    const-string v10, "view"

    .line 35
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "view"

    .line 36
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_8
    move-object v10, v2

    :goto_7
    const-string v11, "orientation"

    .line 40
    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v2, "orientation"

    .line 41
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, 0x2b77bb9b

    if-eq v11, v12, :cond_a

    const v12, 0x5545f2bb

    if-eq v11, v12, :cond_9

    goto :goto_8

    :cond_9
    const-string v11, "landscape"

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_9

    :cond_a
    const-string v8, "portrait"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 v8, 0x2

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v8, -0x1

    :goto_9
    if-eqz v8, :cond_c

    const-string v2, "portrait"

    goto :goto_a

    :cond_c
    const-string v2, "landscape"

    :cond_d
    :goto_a
    if-nez v10, :cond_e

    const-string v10, ""

    .line 57
    :cond_e
    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->Builder(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 58
    invoke-virtual {p0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->d(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v4}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->e(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    if-eqz v5, :cond_f

    goto :goto_b

    :cond_f
    const-string v5, "0"

    .line 60
    :goto_b
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(J)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 61
    invoke-virtual {p0, v6}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->b(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 62
    invoke-virtual {p0, v10}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->f(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 63
    invoke-virtual {p0, v2}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->g(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v3}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->c(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 65
    invoke-virtual {p0, v7}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Z)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 66
    invoke-virtual {p0, v9}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a(Ljava/lang/String;)Lcom/instabug/library/visualusersteps/VisualUserStep$b;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep$b;->a()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p0

    return-object p0
.end method

.method private getButtonIcon()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->buttonIcon:Ljava/lang/String;

    return-object v0
.end method

.method private isContainIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->isContainIcon:Z

    return v0
.end method

.method private setScreenName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenName:Ljava/lang/String;

    return-void
.end method

.method private setStepType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->stepType:Ljava/lang/String;

    return-void
.end method

.method public static toJsonString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/visualusersteps/VisualUserStep;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/visualusersteps/VisualUserStep;

    .line 4
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->date:J

    return-wide v0
.end method

.method public getParentScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->parentScreenId:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenId:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshotId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getStepType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->stepType:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->view:Ljava/lang/String;

    return-object v0
.end method

.method public getViewOrientation()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public hasScreenshot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenshotId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setButtonIcon(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->buttonIcon:Ljava/lang/String;

    return-void
.end method

.method setContainIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->isContainIcon:Z

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->date:J

    return-void
.end method

.method public setParentScreenId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->parentScreenId:Ljava/lang/String;

    return-void
.end method

.method public setScreenId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenId:Ljava/lang/String;

    return-void
.end method

.method public setScreenshotId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenshotId:Ljava/lang/String;

    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->view:Ljava/lang/String;

    return-void
.end method

.method public setViewOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->orientation:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_screen_identifier"

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getParentScreenId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getParentScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getParentScreenId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 11
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "screen_name"

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 18
    :cond_3
    :goto_2
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 19
    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "screenshot_identifier"

    .line 24
    :try_start_2
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenshotId()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    :goto_4
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 26
    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "screen_identifier"

    .line 31
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 33
    :cond_7
    :goto_6
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 34
    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "event_type"

    .line 39
    :try_start_4
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_8

    .line 40
    :cond_8
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 41
    :cond_9
    :goto_8
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 42
    :goto_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "date"

    .line 46
    :try_start_5
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getDate()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "view"

    .line 48
    :try_start_6
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_a

    .line 49
    :cond_a
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 50
    :cond_b
    :goto_a
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_b
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "orientation"

    .line 53
    :try_start_7
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getViewOrientation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 54
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getViewOrientation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_c

    .line 55
    :cond_c
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getViewOrientation()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 56
    :cond_d
    :goto_c
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 57
    :goto_d
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "is_contains"

    .line 61
    :try_start_8
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->isContainIcon()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "button_icon"

    .line 63
    :try_start_9
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getButtonIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_e

    :catch_0
    move-exception v1

    .line 66
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
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

    const-string v1, "VisualUserStep{parentScreenId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->parentScreenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenshotId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenshotId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", screenId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->screenId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->stepType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", view=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/VisualUserStep;->view:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
