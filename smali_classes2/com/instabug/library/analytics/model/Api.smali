.class public Lcom/instabug/library/analytics/model/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/analytics/model/Api$Parameter;
    }
.end annotation


# static fields
.field private static final KEY_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_IS_DEPRECATED:Ljava/lang/String; = "is_deprecated"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field private static final KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "time_stamp"


# instance fields
.field private apiName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private count:I

.field private isDeprecated:Z

.field private parameters:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/Api$Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/instabug/library/analytics/model/Api;->count:I

    .line 7
    invoke-static {}, Lcom/instabug/library/util/InstabugDateFormatter;->getCurrentUTCTimeStampInMiliSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/analytics/model/Api;->setTimeStamp(J)Lcom/instabug/library/analytics/model/Api;

    return-void
.end method

.method public static toJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/Api;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/analytics/model/Api;

    .line 13
    invoke-virtual {v1}, Lcom/instabug/library/analytics/model/Api;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/model/Api;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/analytics/model/Api;->count:I

    return v0
.end method

.method public getParameters()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/Api$Parameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/analytics/model/Api;->parameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/analytics/model/Api;->timeStamp:J

    return-wide v0
.end method

.method public incrementCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/analytics/model/Api;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instabug/library/analytics/model/Api;->count:I

    return-void
.end method

.method public isDeprecated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/analytics/model/Api;->isDeprecated:Z

    return v0
.end method

.method public setApiName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/model/Api;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/analytics/model/Api;->count:I

    return-void
.end method

.method public setDeprecated(Z)Lcom/instabug/library/analytics/model/Api;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/analytics/model/Api;->isDeprecated:Z

    return-object p0
.end method

.method public setParameters(Ljava/util/ArrayList;)Lcom/instabug/library/analytics/model/Api;
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/analytics/model/Api$Parameter;",
            ">;)",
            "Lcom/instabug/library/analytics/model/Api;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/model/Api;->parameters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/instabug/library/analytics/model/Api;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/library/analytics/model/Api;->timeStamp:J

    return-object p0
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

    const-string v1, "time_stamp"

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/Api;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "method"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/Api;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "is_deprecated"

    .line 6
    :try_start_2
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/Api;->isDeprecated()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "count"

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/Api;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "parameters"

    .line 8
    :try_start_4
    invoke-virtual {p0}, Lcom/instabug/library/analytics/model/Api;->getParameters()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->toJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/instabug/library/analytics/model/Api;

    invoke-static {v3, v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
