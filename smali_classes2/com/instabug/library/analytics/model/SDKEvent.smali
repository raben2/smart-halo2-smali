.class public Lcom/instabug/library/analytics/model/SDKEvent;
.super Ljava/lang/Object;
.source "SDKEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/analytics/model/SDKEvent$ExtraAttribute;
    }
.end annotation


# static fields
.field private static final KEY_EVENT_NAME:Ljava/lang/String; = "event_name"

.field private static final KEY_EXTRA_ATTRIBUTES:Ljava/lang/String; = "extra_attributes"

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "time_stamp"


# instance fields
.field private eventName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extraAttributes:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/SDKEvent$ExtraAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/SDKEvent;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/analytics/model/SDKEvent;

    .line 14
    invoke-virtual {v1}, Lcom/instabug/library/analytics/model/SDKEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/model/SDKEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraAttributes()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/SDKEvent$ExtraAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/model/SDKEvent;->extraAttributes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/analytics/model/SDKEvent;->timeStamp:J

    return-wide v0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/SDKEvent;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/model/SDKEvent;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraAttributes(Ljava/util/ArrayList;)Lcom/instabug/library/analytics/model/SDKEvent;
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/SDKEvent$ExtraAttribute;",
            ">;)",
            "Lcom/instabug/library/analytics/model/SDKEvent;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/model/SDKEvent;->extraAttributes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/instabug/library/analytics/model/SDKEvent;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/analytics/model/SDKEvent;->timeStamp:J

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/SDKEvent;->getExtraAttributes()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/SDKEvent;->getExtraAttributes()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "time_stamp"

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/SDKEvent;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "event_name"

    .line 8
    :try_start_2
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/SDKEvent;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "extra_attributes"

    .line 9
    :try_start_3
    invoke-static {v1}, Lcom/instabug/library/analytics/model/SDKEvent$ExtraAttribute;->toJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/instabug/library/analytics/model/SDKEvent;

    invoke-static {v3, v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
