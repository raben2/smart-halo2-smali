.class public Lcom/instabug/survey/cache/a;
.super Ljava/lang/Object;
.source "SurveysDbHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J
    .locals 4
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    const/4 v1, 0x1

    .line 632
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "surveys_table"

    const-string v3, "survey_id=? "

    .line 635
    invoke-virtual {p0, v2, p3, v3, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v1, p0

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "survey id: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " paused state has been updated in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "surveys_table"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/instabug/survey/cache/a;

    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/instabug/survey/models/Survey;)J
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    .line 3
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "survey_id"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v5, "survey_type"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8
    :try_start_5
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v5, "survey_title"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 9
    :try_start_7
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_0

    :try_start_8
    const-string v5, "survey_token"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 11
    :try_start_9
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_0
    :try_start_a
    const-string v5, "conditions_operator"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 12
    :try_start_b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v5, "answered"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 13
    :try_start_d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    const-string v5, "dismissed_at"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 14
    :try_start_f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    const-string v5, "shown_at"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 15
    :try_start_11
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getShownAt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    const-string v5, "isCancelled"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 16
    :try_start_13
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    const-string v5, "attemptCount"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 17
    :try_start_15
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getAttemptCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    const-string v5, "eventIndex"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 18
    :try_start_17
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    const-string v5, "shouldShowAgain"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 19
    :try_start_19
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    const-string v5, "paused"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 20
    :try_start_1b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :try_start_1c
    const-string v5, "sessionCounter"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 21
    :try_start_1d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :try_start_1e
    const-string v5, "questions"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 22
    :try_start_1f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/models/b;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    const-string v5, "thanks_list"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 23
    :try_start_21
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/models/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    const-string v5, "targetAudiences"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 24
    :try_start_23
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTargetAudiences()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    const-string v5, "customAttributes"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 28
    :try_start_25
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getCustomAttributes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :try_start_26
    const-string v5, "userEvents"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 32
    :try_start_27
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :try_start_28
    const-string v5, "surveyState"
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 33
    :try_start_29
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSurveyState()Lcom/instabug/survey/e/c/f;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    const-string v5, "surveyTargeting"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 34
    :try_start_2b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/g;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :try_start_2c
    const-string v5, "surveyTriggerEvent"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 35
    :try_start_2d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :try_start_2e
    const-string v5, "isLocalized"
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    .line 36
    :try_start_2f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/b;->c()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :try_start_30
    const-string v5, "supportedLocales"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    .line 37
    :try_start_31
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instabug/survey/e/c/b;->b()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    if-eqz v5, :cond_1

    :try_start_32
    const-string v5, "currentLocale"
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    .line 39
    :try_start_33
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "surveys_table"

    const/4 v6, 0x0

    .line 43
    invoke-virtual {v1, v5, v6, v4}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    .line 45
    invoke-static {p0}, Lcom/instabug/survey/cache/a;->b(Lcom/instabug/survey/models/Survey;)J

    .line 47
    :cond_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 48
    const-class v6, Lcom/instabug/survey/cache/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "survey id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " has been added to "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "surveys_table"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {v6, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_33} :catch_0
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 58
    :try_start_34
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 59
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    :try_start_35
    const-class v4, Lcom/instabug/survey/cache/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "survey insertion failed due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {v4, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 66
    :try_start_36
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 67
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    monitor-exit v0

    return-wide v2

    .line 68
    :goto_0
    :try_start_37
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 69
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 70
    throw p0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/instabug/survey/models/Survey;ZZ)J
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    .line 73
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 75
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "survey_id"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v5, "survey_type"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :try_start_5
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v5, "survey_title"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    :try_start_7
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_0

    :try_start_8
    const-string v5, "survey_token"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 80
    :try_start_9
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_0
    :try_start_a
    const-string v5, "conditions_operator"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 81
    :try_start_b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v5, "answered"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 82
    :try_start_d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    const-string v5, "dismissed_at"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 83
    :try_start_f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    const-string v5, "shown_at"
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 84
    :try_start_11
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getShownAt()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    const-string v5, "isCancelled"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 85
    :try_start_13
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    const-string v5, "attemptCount"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 86
    :try_start_15
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getAttemptCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :try_start_16
    const-string v5, "eventIndex"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 87
    :try_start_17
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :try_start_18
    const-string v5, "shouldShowAgain"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 88
    :try_start_19
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    const-string v5, "paused"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 89
    :try_start_1b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :try_start_1c
    const-string v5, "sessionCounter"
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 90
    :try_start_1d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :try_start_1e
    const-string v5, "questions"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 91
    :try_start_1f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/models/b;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :try_start_20
    const-string v5, "thanks_list"
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 92
    :try_start_21
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/models/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    const-string v5, "targetAudiences"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 93
    :try_start_23
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTargetAudiences()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    const-string v5, "customAttributes"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 97
    :try_start_25
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getCustomAttributes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    .line 98
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :try_start_26
    const-string v5, "userEvents"
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 101
    :try_start_27
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    :try_start_28
    const-string v5, "surveyState"
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 102
    :try_start_29
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSurveyState()Lcom/instabug/survey/e/c/f;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :try_start_2a
    const-string v5, "surveyTargeting"
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 103
    :try_start_2b
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/g;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :try_start_2c
    const-string v5, "surveyTriggerEvent"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 104
    :try_start_2d
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    :try_start_2e
    const-string v5, "isLocalized"
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    .line 105
    :try_start_2f
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/b;->c()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    :try_start_30
    const-string v5, "supportedLocales"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    .line 106
    :try_start_31
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/instabug/survey/e/c/b;->b()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    if-eqz v5, :cond_1

    :try_start_32
    const-string v5, "currentLocale"
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    .line 108
    :try_start_33
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, "surveys_table"

    const/4 v6, 0x0

    .line 111
    invoke-virtual {v1, v5, v6, v4}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    if-eqz p1, :cond_2

    .line 114
    invoke-static {v1, p0}, Lcom/instabug/survey/cache/a;->c(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 117
    invoke-static {v1, p0}, Lcom/instabug/survey/cache/a;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)V

    .line 120
    :cond_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 121
    const-class p1, Lcom/instabug/survey/cache/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "survey id: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " has been updated in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "surveys_table"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_0
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 132
    :try_start_34
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 133
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    :try_start_35
    const-class p1, Lcom/instabug/survey/cache/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey insertion failed due to "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 140
    :try_start_36
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 141
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1

    monitor-exit v0

    return-wide v2

    .line 142
    :goto_0
    :try_start_37
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 143
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 144
    throw p0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 379
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const-string v2, "surveys_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 381
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "survey_id"

    .line 408
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "survey_type"

    .line 409
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_title"

    .line 410
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_token"

    .line 411
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "conditions_operator"

    .line 412
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "answered"

    .line 413
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dismissed_at"

    .line 414
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shown_at"

    .line 415
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v10, "isCancelled"

    .line 416
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "attemptCount"

    .line 417
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "eventIndex"

    .line 418
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "shouldShowAgain"

    .line 419
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "paused"

    .line 420
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "sessionCounter"

    .line 421
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "questions"

    .line 422
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "thanks_list"

    .line 423
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "targetAudiences"

    .line 424
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "customAttributes"

    .line 425
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "userEvents"

    .line 426
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "surveyState"

    .line 427
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "surveyTargeting"

    .line 428
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "supportedLocales"

    .line 429
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "isLocalized"

    .line 430
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "currentLocale"

    .line 431
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 434
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 507
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v26, v9

    .line 512
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 515
    :goto_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v28, v0

    .line 516
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v29, v2

    .line 517
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v30, v3

    .line 518
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v31, v4

    .line 519
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v32, v5

    .line 520
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v33, v6

    .line 521
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v34, v7

    .line 522
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v35, v8

    .line 523
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v36, v10

    .line 524
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v37, v11

    .line 525
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v38, v12

    .line 526
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v39, v13

    .line 527
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v40, v14

    move/from16 v14, v16

    move-object/from16 v16, v9

    .line 528
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v41, v14

    move/from16 v14, v17

    move/from16 v17, v9

    .line 529
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v14

    move/from16 v14, v18

    move-object/from16 v18, v9

    .line 530
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v14

    move/from16 v14, v19

    move-object/from16 v19, v9

    .line 531
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v14

    move/from16 v14, v20

    move-object/from16 v20, v9

    .line 532
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v14

    move/from16 v14, v21

    move-object/from16 v21, v9

    .line 533
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v46, v14

    move/from16 v14, v22

    .line 534
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v14

    move/from16 v14, v23

    .line 535
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v48, v14

    move/from16 v14, v24

    move-object/from16 v24, v9

    .line 536
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v49, v14

    move/from16 v14, v25

    move-object/from16 v25, v9

    .line 537
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v50, v14

    .line 538
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v51, v15

    .line 540
    new-instance v15, Lcom/instabug/survey/models/Survey;

    invoke-direct {v15}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v52, v13

    move-object/from16 v53, v14

    .line 541
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v15, v13, v14}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 542
    invoke-virtual {v15, v0}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 543
    invoke-virtual {v15, v2}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v15, v4}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v5, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 546
    :goto_1
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v3, v6

    .line 547
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v3, v7

    .line 548
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    if-ne v8, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 549
    :goto_2
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 550
    invoke-virtual {v15, v10}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 551
    invoke-virtual {v15, v11}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v12, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 552
    :goto_3
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    move/from16 v3, v52

    if-ne v3, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 553
    :goto_4
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v3, v17

    .line 554
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 555
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 556
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 557
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v20

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 558
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 559
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 560
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 561
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 562
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v5, v25

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 563
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    move-object/from16 v4, v53

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    if-ne v9, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {v3, v0}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v0, v16

    .line 566
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 569
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 583
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_9
    move-object v9, v0

    move/from16 v0, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v10, v36

    move/from16 v11, v37

    move/from16 v12, v38

    move/from16 v13, v39

    move/from16 v14, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v15, v51

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    .line 587
    :goto_5
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 596
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 600
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 601
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 604
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 605
    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 153
    new-array v5, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p0, v5, v10

    const-string v2, "surveys_table"

    const-string v4, "surveyTriggerEvent=?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v2, "survey_id"

    .line 180
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_type"

    .line 181
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_title"

    .line 182
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "survey_token"

    .line 183
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "conditions_operator"

    .line 184
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "answered"

    .line 185
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dismissed_at"

    .line 186
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "shown_at"

    .line 187
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isCancelled"

    .line 188
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "attemptCount"

    .line 189
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "eventIndex"

    .line 190
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "shouldShowAgain"

    .line 191
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "paused"

    .line 192
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "sessionCounter"

    .line 193
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p0, v0

    const-string v0, "questions"

    .line 194
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "thanks_list"

    .line 195
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "targetAudiences"

    .line 196
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "customAttributes"

    .line 197
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "userEvents"

    .line 198
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "surveyState"

    .line 199
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "surveyTargeting"

    .line 200
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "supportedLocales"

    .line 201
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "isLocalized"

    .line 202
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "currentLocale"

    .line 203
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 207
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-nez v25, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v25

    if-nez v25, :cond_2

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v25, v9

    .line 285
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move/from16 v27, v2

    .line 289
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v28, v3

    .line 290
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v29, v4

    .line 291
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v30, v5

    .line 292
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v31, v6

    .line 293
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v32, v7

    .line 294
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v33, v8

    .line 295
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v34, v11

    .line 296
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v35, v12

    .line 297
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v36, v13

    .line 298
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v37, v14

    .line 299
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v38, v15

    .line 300
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v39, v10

    move/from16 v10, p0

    move-object/from16 p0, v9

    .line 301
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v40, v10

    move/from16 v10, v16

    move/from16 v16, v9

    .line 302
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v41, v10

    move/from16 v10, v17

    move-object/from16 v17, v9

    .line 303
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v10

    move/from16 v10, v18

    move-object/from16 v18, v9

    .line 304
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v10

    move/from16 v10, v19

    move-object/from16 v19, v9

    .line 305
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v10

    move/from16 v10, v20

    move-object/from16 v20, v9

    .line 306
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v10

    move/from16 v10, v21

    .line 307
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v46, v10

    move/from16 v10, v22

    .line 308
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v10

    move/from16 v10, v23

    move-object/from16 v23, v9

    .line 309
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v48, v10

    move/from16 v10, v24

    move-object/from16 v24, v9

    .line 310
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v49, v10

    .line 311
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v50, v0

    .line 313
    new-instance v0, Lcom/instabug/survey/models/Survey;

    invoke-direct {v0}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v51, v9

    move-object/from16 v52, v10

    .line 314
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 315
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 316
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, v4}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v5}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 319
    :goto_1
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v2, v7

    .line 320
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v2, v8

    .line 321
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 322
    :goto_2
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 323
    invoke-virtual {v0, v12}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 324
    invoke-virtual {v0, v13}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v14, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 325
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    if-ne v15, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 326
    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v2, v16

    .line 327
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 328
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 329
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 330
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 331
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 332
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 333
    invoke-static/range {v21 .. v21}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 334
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 335
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 336
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move-object/from16 v3, v52

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move/from16 v3, v51

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v2, p0

    .line 339
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 342
    const-class v0, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys are not answered, have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v0, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v2

    :cond_9
    move-object v9, v2

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v31

    move/from16 v7, v32

    move/from16 v8, v33

    move/from16 v11, v34

    move/from16 v12, v35

    move/from16 v13, v36

    move/from16 v14, v37

    move/from16 v15, v38

    move/from16 v10, v39

    move/from16 p0, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v0, v50

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v25, v9

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v25, v9

    .line 360
    :goto_6
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 369
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 373
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_b
    invoke-virtual/range {v25 .. v25}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 378
    throw v0
.end method

.method public static declared-synchronized a(J)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 606
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    const-string v2, "survey_id=? "

    const/4 v3, 0x1

    .line 608
    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v3, p1

    .line 609
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p0, "surveys_table"

    .line 611
    invoke-virtual {v1, p0, v2, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 612
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 615
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 616
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 617
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 618
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)V
    .locals 3
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/models/b;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "questions"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/models/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thanks_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentLocale"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/instabug/survey/cache/a;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J

    return-void
.end method

.method static declared-synchronized a(Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 622
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/Survey;

    .line 623
    invoke-static {v1, v2}, Lcom/instabug/survey/cache/a;->b(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)J

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 628
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 629
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 630
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 631
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)J
    .locals 6
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "survey_id=? "

    const/4 v1, 0x1

    .line 470
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 473
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "survey_id"

    .line 474
    :try_start_1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "survey_title"

    .line 475
    :try_start_2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "survey_type"

    .line 476
    :try_start_3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_0

    const-string v3, "survey_token"

    .line 478
    :try_start_4
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    const-string v3, "conditions_operator"

    .line 479
    :try_start_5
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "answered"

    .line 480
    :try_start_6
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v3, "dismissed_at"

    .line 481
    :try_start_7
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v3, "shown_at"

    .line 482
    :try_start_8
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getShownAt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v3, "isCancelled"

    .line 483
    :try_start_9
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string v3, "attemptCount"

    .line 484
    :try_start_a
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getAttemptCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string v3, "eventIndex"

    .line 485
    :try_start_b
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string v3, "shouldShowAgain"

    .line 486
    :try_start_c
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string v3, "paused"

    .line 487
    :try_start_d
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string v3, "sessionCounter"

    .line 488
    :try_start_e
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string v3, "questions"

    .line 489
    :try_start_f
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/models/b;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string v3, "thanks_list"

    .line 490
    :try_start_10
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/models/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string v3, "targetAudiences"

    .line 491
    :try_start_11
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTargetAudiences()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    .line 492
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    const-string v3, "customAttributes"

    .line 495
    :try_start_12
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getCustomAttributes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    .line 496
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string v3, "userEvents"

    .line 499
    :try_start_13
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/e/c/c;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    const-string v3, "surveyState"

    .line 500
    :try_start_14
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSurveyState()Lcom/instabug/survey/e/c/f;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0

    const-string v3, "surveyTargeting"

    .line 501
    :try_start_15
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/g;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0

    const-string v3, "surveyTriggerEvent"

    .line 502
    :try_start_16
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0

    const-string v3, "isLocalized"

    .line 503
    :try_start_17
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/b;->c()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0

    const-string v3, "supportedLocales"

    .line 504
    :try_start_18
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instabug/survey/e/c/b;->b()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v3, :cond_1

    const-string v3, "currentLocale"

    .line 506
    :try_start_19
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instabug/survey/e/c/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "surveys_table"

    .line 509
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    .line 511
    const-class p0, Lcom/instabug/survey/cache/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "survey id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " has been updated in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "surveys_table"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_0

    :cond_2
    return-wide v0

    :catch_0
    move-exception p0

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "survey updating failed due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 520
    const-class p1, Lcom/instabug/survey/cache/a;

    invoke-static {p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static declared-synchronized b(Lcom/instabug/survey/models/Survey;)J
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 458
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 461
    invoke-static {v1, p0}, Lcom/instabug/survey/cache/a;->b(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)J

    move-result-wide v2

    .line 462
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 466
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    .line 467
    :try_start_3
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 468
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 469
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(J)Lcom/instabug/survey/models/Survey;
    .locals 28
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 3
    new-array v5, v0, [Ljava/lang/String;

    .line 14
    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const-string v2, "surveys_table"

    const-string v4, "survey_id=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "survey_id"

    .line 42
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_type"

    .line 43
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "survey_title"

    .line 44
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "survey_token"

    .line 45
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "conditions_operator"

    .line 46
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "answered"

    .line 47
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "dismissed_at"

    .line 48
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "shown_at"

    .line 49
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "isCancelled"

    .line 50
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "attemptCount"

    .line 51
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "eventIndex"

    .line 52
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "shouldShowAgain"

    .line 53
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "paused"

    .line 54
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "sessionCounter"

    .line 55
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "questions"

    .line 56
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "thanks_list"

    .line 57
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "targetAudiences"

    .line 58
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "customAttributes"

    .line 59
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "userEvents"

    .line 60
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "surveyState"

    .line 61
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "surveyTargeting"

    .line 62
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "supportedLocales"

    .line 63
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "isLocalized"

    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "currentLocale"

    .line 65
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 70
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_2
    :try_start_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 143
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 144
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 148
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 149
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 150
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 151
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 152
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 153
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 154
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v26, v9

    move/from16 v9, v16

    .line 155
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v16, v9

    move/from16 v9, v17

    .line 156
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v9

    move/from16 v9, v18

    .line 157
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    move/from16 v9, v19

    .line 158
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    move/from16 v9, v20

    .line 159
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v9

    move/from16 v9, v21

    .line 160
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v9

    move/from16 v9, v22

    .line 161
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    move/from16 v9, v23

    .line 162
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v9

    move/from16 v9, v24

    .line 163
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v9

    move/from16 v9, v25

    .line 164
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 165
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v25, v1

    .line 167
    :try_start_3
    new-instance v1, Lcom/instabug/survey/models/Survey;

    invoke-direct {v1}, Lcom/instabug/survey/models/Survey;-><init>()V

    move-object/from16 v27, v2

    .line 168
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 169
    invoke-virtual {v1, v4}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 170
    invoke-virtual {v1, v5}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v6}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v7}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v8, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 173
    :goto_0
    invoke-virtual {v1, v2}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v2, v11

    .line 174
    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v2, v12

    .line 175
    invoke-virtual {v1, v2, v3}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 176
    :goto_1
    invoke-virtual {v1, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 177
    invoke-virtual {v1, v14}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 178
    invoke-virtual {v1, v15}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v10, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 179
    :goto_2
    invoke-virtual {v1, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 180
    :goto_3
    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v0, v16

    .line 181
    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 182
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, v17

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 183
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, v18

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 184
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 185
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, v20

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 186
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, v21

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 187
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 188
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 189
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 190
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v9, v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/e/c/b;->a(Z)V

    .line 194
    const-class v0, Lcom/instabug/survey/cache/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "survey id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " has been retrieved from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "surveys_table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 206
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 207
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v25, v1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v25, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v26, v9

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v25, v1

    move-object/from16 v26, v9

    .line 211
    :goto_5
    :try_start_4
    const-class v1, Lcom/instabug/survey/cache/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "survey conversion failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 219
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 220
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    .line 224
    :goto_6
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 225
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 229
    throw v0
.end method

.method public static b()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const-string v0, ""

    .line 232
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "surveys_table"

    const-string v4, "surveyTriggerEvent != ?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "survey_id"

    .line 259
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "survey_type"

    .line 260
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_title"

    .line 261
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_token"

    .line 262
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "conditions_operator"

    .line 263
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "answered"

    .line 264
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dismissed_at"

    .line 265
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shown_at"

    .line 266
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v10, "isCancelled"

    .line 267
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "attemptCount"

    .line 268
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "eventIndex"

    .line 269
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "shouldShowAgain"

    .line 270
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "paused"

    .line 271
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "sessionCounter"

    .line 272
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "questions"

    .line 273
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "thanks_list"

    .line 274
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "targetAudiences"

    .line 275
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "customAttributes"

    .line 276
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "userEvents"

    .line 277
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "surveyState"

    .line 278
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "surveyTargeting"

    .line 279
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "supportedLocales"

    .line 280
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "isLocalized"

    .line 281
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "currentLocale"

    .line 282
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 286
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v26, v9

    .line 364
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :goto_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v28, v0

    .line 368
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v29, v2

    .line 369
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v30, v3

    .line 370
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v31, v4

    .line 371
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v32, v5

    .line 372
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v33, v6

    .line 373
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v34, v7

    .line 374
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v35, v8

    .line 375
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v36, v10

    .line 376
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v37, v11

    .line 377
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v38, v12

    .line 378
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v39, v13

    .line 379
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v40, v14

    move/from16 v14, v16

    move-object/from16 v16, v9

    .line 380
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v41, v14

    move/from16 v14, v17

    move/from16 v17, v9

    .line 381
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v14

    move/from16 v14, v18

    move-object/from16 v18, v9

    .line 382
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v14

    move/from16 v14, v19

    move-object/from16 v19, v9

    .line 383
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v14

    move/from16 v14, v20

    move-object/from16 v20, v9

    .line 384
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v14

    move/from16 v14, v21

    move-object/from16 v21, v9

    .line 385
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v46, v14

    move/from16 v14, v22

    .line 386
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v14

    move/from16 v14, v23

    .line 387
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v48, v14

    move/from16 v14, v24

    move-object/from16 v24, v9

    .line 388
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v49, v14

    move/from16 v14, v25

    move-object/from16 v25, v9

    .line 389
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v50, v14

    .line 390
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v51, v15

    .line 392
    new-instance v15, Lcom/instabug/survey/models/Survey;

    invoke-direct {v15}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v52, v13

    move-object/from16 v53, v14

    .line 393
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v15, v13, v14}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 394
    invoke-virtual {v15, v0}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 395
    invoke-virtual {v15, v2}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v15, v4}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v5, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 398
    :goto_1
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v3, v6

    .line 399
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v3, v7

    .line 400
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    if-ne v8, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 401
    :goto_2
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 402
    invoke-virtual {v15, v10}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 403
    invoke-virtual {v15, v11}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v12, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 404
    :goto_3
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    move/from16 v3, v52

    if-ne v3, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 405
    :goto_4
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v3, v17

    .line 406
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 407
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 408
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 409
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v20

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 410
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 411
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 412
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 413
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 414
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v5, v25

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 415
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    move-object/from16 v4, v53

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    if-ne v9, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {v3, v0}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v0, v16

    .line 418
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 421
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys are not answered, have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_9
    move-object v9, v0

    move/from16 v0, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v10, v36

    move/from16 v11, v37

    move/from16 v12, v38

    move/from16 v13, v39

    move/from16 v14, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v15, v51

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    .line 439
    :goto_5
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 448
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 452
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 453
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 457
    throw v0
.end method

.method public static declared-synchronized c(Lcom/instabug/survey/models/Survey;)J
    .locals 8

    const-class v0, Lcom/instabug/survey/cache/a;

    monitor-enter v0

    .line 244
    :try_start_0
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v1

    const-string v2, "survey_id=? "

    const/4 v3, 0x1

    .line 246
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 250
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v5, "sessionCounter"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "surveys_table"

    .line 254
    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 255
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->setTransactionSuccessful()V

    .line 256
    const-class v4, Lcom/instabug/survey/cache/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "survey id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " sessions count has been updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in  "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "surveys_table"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {v4, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    :try_start_4
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 265
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    .line 266
    :try_start_5
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->endTransaction()V

    .line 267
    invoke-virtual {v1}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 268
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 6
    new-array v5, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 17
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    const-string v2, "surveys_table"

    const-string v4, "answered=?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 18
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v2, "survey_id"

    .line 45
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_type"

    .line 46
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_title"

    .line 47
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "survey_token"

    .line 48
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "conditions_operator"

    .line 49
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "answered"

    .line 50
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dismissed_at"

    .line 51
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "shown_at"

    .line 52
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isCancelled"

    .line 53
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "attemptCount"

    .line 54
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "eventIndex"

    .line 55
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "shouldShowAgain"

    .line 56
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "paused"

    .line 57
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "sessionCounter"

    .line 58
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "questions"

    .line 59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "thanks_list"

    .line 60
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "targetAudiences"

    .line 61
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "customAttributes"

    .line 62
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "userEvents"

    .line 63
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "surveyState"

    .line 64
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "surveyTargeting"

    .line 65
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "supportedLocales"

    .line 66
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "isLocalized"

    .line 67
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "currentLocale"

    .line 68
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 72
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v26, v9

    .line 150
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 153
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v28, v2

    .line 154
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v29, v3

    .line 155
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v4

    .line 156
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v31, v5

    .line 157
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v32, v6

    .line 158
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v33, v7

    .line 159
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v34, v8

    .line 160
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v35, v11

    .line 161
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v36, v12

    .line 162
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v37, v13

    .line 163
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v38, v14

    .line 164
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v39, v15

    .line 165
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v40, v10

    move/from16 v10, v16

    move-object/from16 v16, v9

    .line 166
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v41, v10

    move/from16 v10, v17

    move/from16 v17, v9

    .line 167
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v10

    move/from16 v10, v18

    move-object/from16 v18, v9

    .line 168
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v10

    move/from16 v10, v19

    move-object/from16 v19, v9

    .line 169
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v10

    move/from16 v10, v20

    move-object/from16 v20, v9

    .line 170
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v10

    move/from16 v10, v21

    move-object/from16 v21, v9

    .line 171
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v46, v10

    move/from16 v10, v22

    .line 172
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v10

    move/from16 v10, v23

    .line 173
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v48, v10

    move/from16 v10, v24

    move-object/from16 v24, v9

    .line 174
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v49, v10

    move/from16 v10, v25

    move-object/from16 v25, v9

    .line 175
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v50, v10

    .line 176
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v51, v0

    .line 178
    new-instance v0, Lcom/instabug/survey/models/Survey;

    invoke-direct {v0}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v52, v9

    move-object/from16 v53, v10

    .line 179
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 180
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 182
    invoke-virtual {v0, v4}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, v5}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 184
    :goto_1
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v2, v7

    .line 185
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v2, v8

    .line 186
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 187
    :goto_2
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 188
    invoke-virtual {v0, v12}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 189
    invoke-virtual {v0, v13}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v14, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 190
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    if-ne v15, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 191
    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v2, v17

    .line 192
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 193
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 194
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 195
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 196
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 197
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 198
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 199
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 200
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v25

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 201
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move-object/from16 v3, v53

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move/from16 v3, v52

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v2, v16

    .line 204
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 207
    const-class v0, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys are not answered, have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v0, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v2

    :cond_9
    move-object v9, v2

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v6, v32

    move/from16 v7, v33

    move/from16 v8, v34

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v37

    move/from16 v14, v38

    move/from16 v15, v39

    move/from16 v10, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v0, v51

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    .line 225
    :goto_6
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 238
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 243
    throw v0
.end method

.method private static c(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;Lcom/instabug/survey/models/Survey;)V
    .locals 3
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "paused"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lcom/instabug/survey/cache/a;->a(Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;JLandroid/content/ContentValues;)J

    return-void
.end method

.method public static d()Ljava/util/List;
    .locals 54
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const/4 v0, 0x1

    .line 2
    new-array v5, v0, [Ljava/lang/String;

    sget-object v1, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v5, v10

    const-string v2, "surveys_table"

    const-string v4, "surveyState=? "

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    .line 14
    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v2, "survey_id"

    .line 41
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_type"

    .line 42
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_title"

    .line 43
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "survey_token"

    .line 44
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "conditions_operator"

    .line 45
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "answered"

    .line 46
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "dismissed_at"

    .line 47
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v11, "shown_at"

    .line 48
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isCancelled"

    .line 49
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "attemptCount"

    .line 50
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "eventIndex"

    .line 51
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "shouldShowAgain"

    .line 52
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v10, "paused"

    .line 53
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "sessionCounter"

    .line 54
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "questions"

    .line 55
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "thanks_list"

    .line 56
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "targetAudiences"

    .line 57
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "customAttributes"

    .line 58
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "userEvents"

    .line 59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "surveyState"

    .line 60
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "surveyTargeting"

    .line 61
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "supportedLocales"

    .line 62
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "isLocalized"

    .line 63
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "currentLocale"

    .line 64
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v26, v9

    .line 146
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 149
    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v28, v2

    .line 150
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v29, v3

    .line 151
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v4

    .line 152
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v31, v5

    .line 153
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v32, v6

    .line 154
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v33, v7

    .line 155
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v34, v8

    .line 156
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v35, v11

    .line 157
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v36, v12

    .line 158
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v37, v13

    .line 159
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v38, v14

    .line 160
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v39, v15

    .line 161
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v40, v10

    move/from16 v10, v16

    move-object/from16 v16, v9

    .line 162
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v41, v10

    move/from16 v10, v17

    move/from16 v17, v9

    .line 163
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v10

    move/from16 v10, v18

    move-object/from16 v18, v9

    .line 164
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v10

    move/from16 v10, v19

    move-object/from16 v19, v9

    .line 165
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v10

    move/from16 v10, v20

    move-object/from16 v20, v9

    .line 166
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v10

    move/from16 v10, v21

    move-object/from16 v21, v9

    .line 167
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v46, v10

    move/from16 v10, v22

    .line 168
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v10

    move/from16 v10, v23

    .line 169
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v48, v10

    move/from16 v10, v24

    move-object/from16 v24, v9

    .line 170
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v49, v10

    move/from16 v10, v25

    move-object/from16 v25, v9

    .line 171
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v50, v10

    .line 172
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v51, v0

    .line 174
    new-instance v0, Lcom/instabug/survey/models/Survey;

    invoke-direct {v0}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v52, v9

    move-object/from16 v53, v10

    .line 175
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 176
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 177
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, v4}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v5}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 180
    :goto_1
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v2, v7

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v2, v8

    .line 182
    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 183
    :goto_2
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 184
    invoke-virtual {v0, v12}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 185
    invoke-virtual {v0, v13}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v14, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 186
    :goto_3
    invoke-virtual {v0, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    if-ne v15, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 187
    :goto_4
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v2, v17

    .line 188
    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 189
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 190
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 191
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 192
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 193
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 194
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 195
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 196
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v25

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 197
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move-object/from16 v3, v53

    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v2

    move/from16 v3, v52

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v2, v16

    .line 200
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    const-class v0, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys are ready to be send, have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v0, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v2

    :cond_9
    move-object v9, v2

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v6, v32

    move/from16 v7, v33

    move/from16 v8, v34

    move/from16 v11, v35

    move/from16 v12, v36

    move/from16 v13, v37

    move/from16 v14, v38

    move/from16 v15, v39

    move/from16 v10, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v0, v51

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    .line 221
    :goto_6
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 234
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 239
    throw v0
.end method

.method public static e()Ljava/util/List;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->getInstance()Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/db/DatabaseManager;->openDatabase()Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;

    move-result-object v9

    const-string v0, ""

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "surveys_table"

    const-string v4, "surveyTriggerEvent=?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "survey_id"

    .line 30
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "survey_type"

    .line 31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "survey_title"

    .line 32
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "survey_token"

    .line 33
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "conditions_operator"

    .line 34
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "answered"

    .line 35
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dismissed_at"

    .line 36
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "shown_at"

    .line 37
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v10, "isCancelled"

    .line 38
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "attemptCount"

    .line 39
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "eventIndex"

    .line 40
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "shouldShowAgain"

    .line 41
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "paused"

    .line 42
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "sessionCounter"

    .line 43
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "questions"

    .line 44
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "thanks_list"

    .line 45
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "targetAudiences"

    .line 46
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "customAttributes"

    .line 47
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "userEvents"

    .line 48
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "surveyState"

    .line 49
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "surveyTargeting"

    .line 50
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "supportedLocales"

    .line 51
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "isLocalized"

    .line 52
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "currentLocale"

    .line 53
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 57
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v26

    if-nez v26, :cond_2

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    invoke-virtual {v9}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_2
    move-object/from16 v26, v9

    .line 135
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :goto_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v28, v0

    .line 139
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v29, v2

    .line 140
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v30, v3

    .line 141
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v31, v4

    .line 142
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v32, v5

    .line 143
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v33, v6

    .line 144
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v34, v7

    .line 145
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v35, v8

    .line 146
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v36, v10

    .line 147
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v37, v11

    .line 148
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v38, v12

    .line 149
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move/from16 v39, v13

    .line 150
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v40, v14

    move/from16 v14, v16

    move-object/from16 v16, v9

    .line 151
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v41, v14

    move/from16 v14, v17

    move/from16 v17, v9

    .line 152
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v42, v14

    move/from16 v14, v18

    move-object/from16 v18, v9

    .line 153
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v43, v14

    move/from16 v14, v19

    move-object/from16 v19, v9

    .line 154
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v44, v14

    move/from16 v14, v20

    move-object/from16 v20, v9

    .line 155
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v45, v14

    move/from16 v14, v21

    move-object/from16 v21, v9

    .line 156
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v46, v14

    move/from16 v14, v22

    .line 157
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v47, v14

    move/from16 v14, v23

    .line 158
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move/from16 v48, v14

    move/from16 v14, v24

    move-object/from16 v24, v9

    .line 159
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v49, v14

    move/from16 v14, v25

    move-object/from16 v25, v9

    .line 160
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v50, v14

    .line 161
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v51, v15

    .line 163
    new-instance v15, Lcom/instabug/survey/models/Survey;

    invoke-direct {v15}, Lcom/instabug/survey/models/Survey;-><init>()V

    move/from16 v52, v13

    move-object/from16 v53, v14

    .line 164
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v15, v13, v14}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    .line 165
    invoke-virtual {v15, v0}, Lcom/instabug/survey/models/Survey;->setType(I)V

    .line 166
    invoke-virtual {v15, v2}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v15, v4}, Lcom/instabug/survey/models/Survey;->setConditionsOperator(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v5, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 169
    :goto_1
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    int-to-long v3, v6

    .line 170
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    int-to-long v3, v7

    .line 171
    invoke-virtual {v15, v3, v4}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    if-ne v8, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 172
    :goto_2
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 173
    invoke-virtual {v15, v10}, Lcom/instabug/survey/models/Survey;->setAttemptCount(I)V

    .line 174
    invoke-virtual {v15, v11}, Lcom/instabug/survey/models/Survey;->setEventIndex(I)V

    if-ne v12, v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 175
    :goto_3
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    move/from16 v3, v52

    if-ne v3, v2, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 176
    :goto_4
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    move/from16 v3, v17

    .line 177
    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSessionCount(I)V

    .line 178
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    .line 179
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 180
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v20

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTargetAudiences(Ljava/util/ArrayList;)V

    .line 181
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setCustomAttributes(Ljava/util/ArrayList;)V

    .line 182
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, v24

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/instabug/survey/e/c/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setUserEvents(Ljava/util/ArrayList;)V

    .line 183
    invoke-static/range {v22 .. v22}, Lcom/instabug/survey/e/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 184
    invoke-static/range {v23 .. v23}, Lcom/instabug/survey/e/c/g;->b(Ljava/lang/String;)Lcom/instabug/survey/e/c/g;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/instabug/survey/models/Survey;->setTarget(Lcom/instabug/survey/e/c/g;)V

    .line 185
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    new-instance v4, Lorg/json/JSONArray;

    move-object/from16 v5, v25

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Lorg/json/JSONArray;)V

    .line 186
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    move-object/from16 v4, v53

    invoke-virtual {v3, v4}, Lcom/instabug/survey/e/c/b;->a(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v15}, Lcom/instabug/survey/models/Survey;->getLocalization()Lcom/instabug/survey/e/c/b;

    move-result-object v3

    if-ne v9, v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-virtual {v3, v0}, Lcom/instabug/survey/e/c/b;->a(Z)V

    move-object/from16 v0, v16

    .line 189
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 192
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " surveys are not answered, have been retrieved from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "surveys_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v2, v3}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    :cond_9
    move-object v9, v0

    move/from16 v0, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v10, v36

    move/from16 v11, v37

    move/from16 v12, v38

    move/from16 v13, v39

    move/from16 v14, v40

    move/from16 v16, v41

    move/from16 v17, v42

    move/from16 v18, v43

    move/from16 v19, v44

    move/from16 v20, v45

    move/from16 v21, v46

    move/from16 v22, v47

    move/from16 v23, v48

    move/from16 v24, v49

    move/from16 v25, v50

    move/from16 v15, v51

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v26, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v26, v9

    .line 210
    :goto_5
    :try_start_2
    const-class v2, Lcom/instabug/survey/cache/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "survey conversion failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 219
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_a
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    return-object v0

    .line 223
    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/instabug/library/internal/storage/cache/db/SQLiteDatabaseWrapper;->close()V

    .line 228
    throw v0
.end method
