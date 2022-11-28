.class public Lcom/instabug/survey/h/h;
.super Ljava/lang/Object;
.source "SurveysValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/h/h$b;
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "DM_BOXED_PRIMITIVE_FOR_COMPARE"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/survey/h/h$b;

.field private b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/instabug/survey/h/h$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/h/h;->a:Lcom/instabug/survey/h/h$b;

    .line 3
    iput-object p2, p0, Lcom/instabug/survey/h/h;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/instabug/survey/h/h;->c:Ljava/lang/String;

    return-void
.end method

.method private a(JJ)I
    .locals 1

    .line 210
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllValidSurveys(availableSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/Survey;

    .line 7
    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->isOptInSurvey()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/models/Survey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Lcom/instabug/survey/h/b;

    invoke-direct {v3}, Lcom/instabug/survey/h/b;-><init>()V

    invoke-virtual {v3, v2}, Lcom/instabug/survey/h/b;->f(Lcom/instabug/survey/models/Survey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/instabug/survey/h/h$a;

    invoke-direct {v1, p0}, Lcom/instabug/survey/h/h$a;-><init>(Lcom/instabug/survey/h/h;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method private a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/instabug/survey/e/c/c;J)Z
    .locals 6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDaysSinceDismissCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastDismissDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    return v0

    .line 24
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    invoke-static {p2, p3}, Lcom/instabug/survey/h/a;->a(J)I

    move-result p2

    .line 27
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p3

    const/4 v3, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x51eff93a

    if-eq v4, v5, :cond_5

    const v5, 0x5c46734

    if-eq v4, v5, :cond_4

    const v5, 0x15d07c87    # 8.4207E-26f

    if-eq v4, v5, :cond_3

    const v5, 0x603dcac8

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "not_equal"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "less_than"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    const-string v4, "equal"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const-string v4, "greater_than"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-ge p2, v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_1
    if-le p2, v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_2
    if-eq p2, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_3
    if-ne p2, v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    return v0

    :catch_0
    move-exception p2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "and"

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/e/c/c;

    invoke-direct {p0, v3}, Lcom/instabug/survey/h/h;->i(Lcom/instabug/survey/e/c/c;)Z

    move-result v3

    if-nez v0, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xde3

    if-eq v5, v6, :cond_3

    const v6, 0x179d7

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "and"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v5, "or"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    and-int/2addr v2, v3

    goto :goto_2

    :cond_5
    or-int/2addr v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "\\d+(\\.\\d+)*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/instabug/survey/e/c/c;I)Z
    .locals 7

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDaysSinceDismissCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualSessionCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x51eff93a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const v5, 0x5c46734

    if-eq v4, v5, :cond_3

    const v5, 0x15d07c87    # 8.4207E-26f

    if-eq v4, v5, :cond_2

    const v5, 0x603dcac8

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "not_equal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "less_than"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v4, "equal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v4, "greater_than"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-ge p2, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_1
    if-le p2, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_2
    if-eq p2, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :pswitch_3
    if-ne p2, v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    :catch_0
    move-exception p2

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SurveysValidator"

    .line 43
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private h(Lcom/instabug/survey/e/c/c;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDaysSinceSignUpCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getFirstRunAt()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/instabug/survey/h/a;->a(J)I

    move-result v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actualDifferenceInDays: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x51eff93a

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x5c46734

    if-eq v5, v6, :cond_3

    const v6, 0x15d07c87    # 8.4207E-26f

    if-eq v5, v6, :cond_2

    const v6, 0x603dcac8

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "not_equal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "less_than"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v5, "equal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "greater_than"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-ge v2, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_1
    if-le v2, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_2
    if-eq v2, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :pswitch_3
    if-ne v2, v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    :catch_0
    move-exception v0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(Lcom/instabug/survey/e/c/c;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/h/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUserEvent(condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actualEventLoggingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;I)Z

    move-result p1

    return p1
.end method

.method private j(Lcom/instabug/survey/e/c/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/survey/h/h;->h(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1
.end method

.method private k(Lcom/instabug/survey/e/c/c;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateOSApiLevel(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.VERSION.SDK_INT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x51eff93a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    const v4, 0x5c46734

    if-eq v3, v4, :cond_2

    const v4, 0x15d07c87    # 8.4207E-26f

    if-eq v3, v4, :cond_1

    const v4, 0x603dcac8

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "not_equal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "less_than"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const-string v3, "equal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "greater_than"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    return v6

    .line 13
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 14
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    return v5

    .line 15
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq p1, v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    return v5

    .line 16
    :pswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    return v5

    :catch_0
    move-exception v0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 171
    :try_start_0
    const-class v1, Lcom/instabug/library/logging/InstabugUserEventLogger;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getLoggingEventCount"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 172
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 175
    invoke-static {}, Lcom/instabug/library/logging/InstabugUserEventLogger;->getInstance()Lcom/instabug/library/logging/InstabugUserEventLogger;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 184
    const-class v1, Lcom/instabug/survey/h/h;

    const-string v2, "METHOD NOT FOUND !"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 186
    const-class v1, Lcom/instabug/survey/h/h;

    const-string v2, "METHOD NOT FOUND !"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 188
    const-class v1, Lcom/instabug/survey/h/h;

    const-string v2, "METHOD NOT FOUND !"

    invoke-static {v1, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public a()Lcom/instabug/survey/models/Survey;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "getFirstValidSurvey()"

    .line 16
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getTimeTriggeredSurveys()Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeTriggeredSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeTriggeredSurveys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "no valid surveys. Returning null..."

    .line 26
    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Survey with id:{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "}  is first valid survey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method a(Lcom/instabug/survey/e/c/c;)Z
    .locals 2
    .param p1    # Lcom/instabug/survey/e/c/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 164
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/db/userAttribute/UserAttributesDbHelper;->getAll()Ljava/util/HashMap;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/instabug/survey/e/c/c;I)Z
    .locals 7

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUserEvent(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 196
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x51eff93a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const v5, 0x5c46734

    if-eq v4, v5, :cond_3

    const v5, 0x15d07c87    # 8.4207E-26f

    if-eq v4, v5, :cond_2

    const v5, 0x603dcac8

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "not_equal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "less_than"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v4, "equal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v4, "greater_than"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-ge p2, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :pswitch_1
    if-le p2, v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_2
    if-eq p2, v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    :pswitch_3
    if-ne p2, v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1

    :catch_0
    move-exception p2

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/instabug/survey/e/c/c;J)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPrimitiveType(primitiveTypeCondition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dismissedAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "last_seen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1
    const-string v1, "sessions_count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "app_version_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "days_since_dismiss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "country"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "android_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_9
    const-string v1, "days_since_signup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    .line 91
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->c(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 92
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->b(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 93
    :pswitch_2
    invoke-static {}, Lcom/instabug/survey/g/c;->b()Ljava/lang/String;

    move-result-object p2

    .line 94
    const-class p3, Lcom/instabug/survey/models/a;

    invoke-static {p2, p3}, Lcom/instabug/library/util/ObjectMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object p2

    check-cast p2, Lcom/instabug/survey/models/a;

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Lcom/instabug/survey/models/a;)Z

    move-result p1

    return p1

    .line 96
    :pswitch_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/Long;)Z

    move-result p1

    return p1

    .line 97
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/instabug/survey/h/h;->j(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 98
    :pswitch_5
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getSessionsCount()I

    move-result p2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/h/h;->b(Lcom/instabug/survey/e/c/c;I)Z

    move-result p1

    return p1

    .line 101
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->g(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 102
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->f(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 103
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->e(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 104
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/h;->d(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x574dbb5b -> :sswitch_9
        -0x35c17346 -> :sswitch_8
        -0xbce4f8 -> :sswitch_7
        0x2eefae -> :sswitch_6
        0x5c24b9c -> :sswitch_5
        0x39175796 -> :sswitch_4
        0x54c1509d -> :sswitch_3
        0x64fbf421 -> :sswitch_2
        0x7199daed -> :sswitch_1
        0x78002284 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public a(Lcom/instabug/survey/e/c/c;Lcom/instabug/survey/models/a;)Z
    .locals 5
    .param p2    # Lcom/instabug/survey/models/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateOSApiLevel(primitiveTypeCondition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countryInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p2}, Lcom/instabug/survey/models/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x5c46734

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "equal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    return v0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method a(Lcom/instabug/survey/e/c/c;Ljava/lang/Long;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 152
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/instabug/survey/h/h;->b(Lcom/instabug/survey/e/c/c;J)Z

    move-result p1

    return p1
.end method

.method a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStringCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x259a0c98

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x5c46734

    if-eq v3, v4, :cond_3

    const v4, 0x38b724d4

    if-eq v3, v4, :cond_2

    const v4, 0x603dcac8

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "not_equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    const-string v3, "equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "not_contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 128
    :pswitch_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 129
    :pswitch_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 130
    :pswitch_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/instabug/survey/e/c/c;Ljava/util/Date;)Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDateCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/InstabugDateFormatter;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 138
    invoke-static {v0}, Lcom/instabug/library/util/InstabugDateFormatter;->getStandardizedDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 139
    invoke-static {p2}, Lcom/instabug/library/util/InstabugDateFormatter;->getStandardizedDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x51eff93a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_4

    const v4, 0x5c46734

    if-eq v3, v4, :cond_3

    const v4, 0x15d07c87    # 8.4207E-26f

    if-eq v3, v4, :cond_2

    const v4, 0x603dcac8

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "not_equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "less_than"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v3, "equal"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "greater_than"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1

    .line 149
    :pswitch_1
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    return p1

    .line 150
    :pswitch_2
    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result p2

    if-eq p1, p2, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 151
    :pswitch_3
    invoke-virtual {p2}, Ljava/util/Date;->getDate()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result p2

    if-ne p1, p2, :cond_7

    const/4 v1, 0x1

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/instabug/survey/models/Survey;)Z
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSurveyValidity(survey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTargetAudiences()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v2

    .line 33
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/instabug/survey/h/h;->a(Ljava/util/ArrayList;Ljava/lang/String;J)Z

    move-result v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primitiveTypesValidity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getCustomAttributes()Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/h/h;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customAttributesValidity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-direct {p0, v2, v3}, Lcom/instabug/survey/h/h;->b(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userEventsValidity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getUserEvents()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getCustomAttributes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTargetAudiences()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    return v4

    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getConditionsOperator()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xde3

    const/4 v7, 0x0

    if-eq v5, v6, :cond_4

    const v6, 0x179d7

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "and"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "or"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    :goto_1
    if-eqz v3, :cond_a

    if-eq v3, v4, :cond_7

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_7
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_3
    return v4

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    return v4
.end method

.method a(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 154
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCustomAttributesConditions(customAttributesConditions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", conditionsOperator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    const-string v2, "and"

    .line 156
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 159
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/survey/e/c/c;

    invoke-virtual {p0, v4}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;)Z

    move-result v4

    if-nez v2, :cond_1

    move v3, v4

    goto :goto_5

    :cond_1
    const/4 v5, -0x1

    .line 163
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xde3

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    const v7, 0x179d7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "and"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "or"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_5
    or-int/2addr v3, v4

    goto :goto_4

    :cond_6
    :goto_3
    and-int/2addr v3, v4

    :goto_4
    and-int/2addr v3, v4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v3
.end method

.method a(Ljava/util/ArrayList;Ljava/lang/String;J)Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/e/c/c;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPrimitiveTypes(primitiveTypesConditions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", conditionsOperator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dismissedAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    const-string v2, "and"

    .line 58
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 60
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/survey/e/c/c;

    invoke-virtual {p0, v4, p3, p4}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;J)Z

    move-result v4

    if-nez v2, :cond_1

    move v3, v4

    goto :goto_4

    :cond_1
    const/4 v5, -0x1

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xde3

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    const v7, 0x179d7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "and"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "or"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_5
    or-int/2addr v3, v4

    goto :goto_4

    :cond_6
    :goto_3
    and-int/2addr v3, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return v3
.end method

.method public b()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getLastSeenTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSurveysByEventTriggerIfAvailable(triggerEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/instabug/survey/cache/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventTriggeredSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no valid surveys for the event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Returning null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Survey with id:{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "} is first valid survey for the event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/instabug/survey/h/h;->a:Lcom/instabug/survey/h/h$b;

    invoke-interface {p1, v0}, Lcom/instabug/survey/h/h$b;->b(Lcom/instabug/survey/models/Survey;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Lcom/instabug/survey/e/c/c;)Z
    .locals 8

    .line 52
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 53
    invoke-virtual {p0}, Lcom/instabug/survey/h/h;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/instabug/survey/h/h;->a(JJ)I

    move-result v2

    int-to-long v2, v2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUserEvent(condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", daysSinceLastSeen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, -0x51eff93a

    if-eq v4, v7, :cond_3

    const v7, 0x5c46734

    if-eq v4, v7, :cond_2

    const v7, 0x15d07c87    # 8.4207E-26f

    if-eq v4, v7, :cond_1

    const v7, 0x603dcac8

    if-eq v4, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "not_equal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "less_than"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v4, "equal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "greater_than"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v6

    :pswitch_0
    cmp-long p1, v2, v0

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    return v5

    :pswitch_1
    cmp-long p1, v2, v0

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    return v5

    :pswitch_2
    cmp-long p1, v2, v0

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    return v5

    :pswitch_3
    cmp-long p1, v2, v0

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/instabug/survey/e/c/c;I)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/h/h;->c(Lcom/instabug/survey/e/c/c;I)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/Survey;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getTimeTriggeredSurveys()Ljava/util/List;

    move-result-object v0

    .line 31
    :try_start_0
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 36
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/Survey;

    .line 41
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/models/Survey;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    new-instance v3, Lcom/instabug/survey/Survey;

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/instabug/survey/Survey;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 45
    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public c(Lcom/instabug/survey/e/c/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/survey/h/h;->k(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "showSurveysByTimeTriggerIfAvailable()"

    .line 1
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getTimeTriggeredSurveys()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeTriggeredSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validSurveys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/Survey;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "no valid time-triggered surveys. Returning null..."

    .line 11
    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Survey with id:{ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "}  is first valid survey for time-triggered surveys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/instabug/survey/h/h;->a:Lcom/instabug/survey/h/h$b;

    invoke-interface {v1, v0}, Lcom/instabug/survey/h/h$b;->a(Lcom/instabug/survey/models/Survey;)V

    :goto_1
    return-void
.end method

.method d(Lcom/instabug/survey/e/c/c;)Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateAppVersion(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equal"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "not_equal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 19
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/survey/h/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/instabug/survey/h/h;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/instabug/survey/h/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appVersionName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/instabug/survey/h/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", currentVersionName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    const/4 p1, 0x0

    .line 24
    :try_start_0
    invoke-static {v2, v1}, Lcom/instabug/library/util/StringUtility;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x51eff93a

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x5c46734

    if-eq v2, v3, :cond_2

    const v3, 0x15d07c87    # 8.4207E-26f

    if-eq v2, v3, :cond_1

    const v3, 0x603dcac8

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "not_equal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "less_than"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v2, "equal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "greater_than"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return p1

    :pswitch_0
    if-ne v1, v4, :cond_5

    const/4 p1, 0x1

    :cond_5
    return p1

    :pswitch_1
    if-ne v1, v5, :cond_6

    const/4 p1, 0x1

    :cond_6
    return p1

    :pswitch_2
    if-eqz v1, :cond_7

    const/4 p1, 0x1

    :cond_7
    return p1

    :pswitch_3
    if-nez v1, :cond_8

    const/4 p1, 0x1

    :catch_0
    :cond_8
    return p1

    .line 42
    :cond_9
    iget-object v0, p0, Lcom/instabug/survey/h/h;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method e(Lcom/instabug/survey/e/c/c;)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateAppVersion(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instabug/survey/h/h;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "greater_than"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "less_than"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/h/h;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 23
    invoke-static {}, Lcom/instabug/survey/g/c;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v2, v6

    if-eqz p1, :cond_9

    cmp-long p1, v4, v6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x51eff93a

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0x15d07c87    # 8.4207E-26f

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "less_than"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "greater_than"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_6

    return v1

    :cond_6
    cmp-long p1, v4, v2

    if-gez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    cmp-long p1, v4, v2

    if-lez p1, :cond_9

    const/4 v1, 0x1

    :catch_0
    :cond_9
    :goto_2
    return v1
.end method

.method f(Lcom/instabug/survey/e/c/c;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method g(Lcom/instabug/survey/e/c/c;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getIdentifiedUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/h/h;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
