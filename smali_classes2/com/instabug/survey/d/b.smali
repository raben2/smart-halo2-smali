.class public Lcom/instabug/survey/d/b;
.super Ljava/lang/Object;
.source "AnnouncementValidator.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/d/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/survey/d/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(JJ)I
    .locals 1

    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method private a(Lcom/instabug/survey/e/c/c;I)Z
    .locals 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSessionCountCondition(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "). actualSessionCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/instabug/survey/d/c/a;)Lcom/instabug/survey/e/c/c;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "getTargetVersionCondition(announcement: null)"

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTargetVersionCondition(announcementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/survey/e/c/g;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/e/c/c;

    .line 5
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "condition: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AnnouncementValidator"

    .line 10
    invoke-static {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/instabug/survey/e/c/c;I)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;I)Z

    move-result p1

    return p1
.end method

.method private c(Lcom/instabug/survey/d/c/a;)Z
    .locals 2

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isFirstInstall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/instabug/survey/d/b;->b(Lcom/instabug/survey/d/c/a;)Lcom/instabug/survey/e/c/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->e(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x65

    .line 1
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/b;->a(I)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/c/a;

    .line 5
    invoke-virtual {p0, v2}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/d/c/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-direct {p0, v2}, Lcom/instabug/survey/d/b;->e(Lcom/instabug/survey/d/c/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private d(Lcom/instabug/survey/d/c/a;)Z
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->e()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x64

    .line 3
    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/b;->a(I)Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/c/a;

    .line 7
    invoke-direct {p0, v2}, Lcom/instabug/survey/d/b;->c(Lcom/instabug/survey/d/c/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-direct {p0, v2}, Lcom/instabug/survey/d/b;->e(Lcom/instabug/survey/d/c/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {p0, v2}, Lcom/instabug/survey/d/b;->d(Lcom/instabug/survey/d/c/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private e(Lcom/instabug/survey/d/c/a;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->x()Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateShowingRepetition(announcement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). ShouldShow ? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    return v0
.end method

.method private f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/d/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasValidAnnouncements() ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    return v0
.end method

.method private g(Lcom/instabug/survey/e/c/c;)Z
    .locals 5

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

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build.VERSION.SDK_INT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, -0x51eff93a

    if-eq v1, v4, :cond_3

    const v4, 0x5c46734

    if-eq v1, v4, :cond_2

    const v4, 0x15d07c87    # 8.4207E-26f

    if-eq v1, v4, :cond_1

    const v4, 0x603dcac8

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "not_equal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "less_than"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "equal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "greater_than"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v3

    .line 12
    :pswitch_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 13
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 14
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq p1, v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 15
    :pswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/instabug/survey/d/c/a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/d/b;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/a;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstValidAnnouncement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "getFirstValidAnnouncement: no valid announcements. Returning null..."

    .line 6
    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\d+(\\.\\d+)*"

    .line 27
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method a(Lcom/instabug/survey/d/c/a;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStringCondition(announcement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/instabug/survey/d/b;->a(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    .line 36
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/survey/e/c/g;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/instabug/survey/e/c/c;)Z
    .locals 8

    .line 51
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 52
    invoke-virtual {p0}, Lcom/instabug/survey/d/b;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/instabug/survey/d/b;->a(JJ)I

    move-result v2

    int-to-long v2, v2

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLastSeenTimestamp(condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "). daysSinceLastSeen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 54
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

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p2}, Lcom/instabug/survey/models/a;->c()Ljava/lang/String;

    move-result-object p2

    .line 48
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

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Lcom/instabug/survey/e/c/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7
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

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-nez p2, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x259a0c98

    if-eq v4, v5, :cond_5

    const v5, 0x5c46734

    if-eq v4, v5, :cond_4

    const v5, 0x38b724d4

    if-eq v4, v5, :cond_3

    const v5, 0x603dcac8

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "not_equal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "contain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const-string v4, "equal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const-string v4, "not_contain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    .line 23
    :pswitch_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 24
    :pswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 25
    :pswitch_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    .line 26
    :pswitch_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPrimitiveTypes(primitiveTypesConditions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", conditionsOperator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    const-string v2, "and"

    .line 40
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/survey/e/c/c;

    invoke-virtual {p0, v4}, Lcom/instabug/survey/d/b;->c(Lcom/instabug/survey/e/c/c;)Z

    move-result v4

    if-nez v2, :cond_1

    move v3, v4

    goto :goto_4

    :cond_1
    const/4 v5, -0x1

    .line 46
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

    .line 9
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getLastSeenTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/instabug/survey/e/c/c;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/survey/d/b;->g(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/survey/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/b;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/survey/d/b;->e()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method c(Lcom/instabug/survey/e/c/c;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPrimitiveType(primitiveTypeCondition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "last_seen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "sessions_count"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "app_version_v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "country"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "android_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    .line 27
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->b(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 28
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 29
    :pswitch_2
    invoke-static {}, Lcom/instabug/survey/d/d/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-class v1, Lcom/instabug/survey/models/a;

    invoke-static {v0, v1}, Lcom/instabug/library/util/ObjectMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Lcom/instabug/library/internal/storage/cache/Cacheable;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/a;

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;Lcom/instabug/survey/models/a;)Z

    move-result p1

    return p1

    .line 32
    :pswitch_3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionsCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/instabug/survey/d/b;->b(Lcom/instabug/survey/e/c/c;I)Z

    move-result p1

    return p1

    .line 33
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->f(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 34
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->e(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    .line 35
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/b;->d(Lcom/instabug/survey/e/c/c;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x35c17346 -> :sswitch_6
        -0xbce4f8 -> :sswitch_5
        0x5c24b9c -> :sswitch_4
        0x39175796 -> :sswitch_3
        0x64fbf421 -> :sswitch_2
        0x7199daed -> :sswitch_1
        0x78002284 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method d(Lcom/instabug/survey/e/c/c;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateAppVersion(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/survey/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/instabug/survey/d/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/instabug/survey/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 17
    :cond_0
    :try_start_0
    invoke-static {v1, v0}, Lcom/instabug/library/util/StringUtility;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x51eff93a

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v3, :cond_4

    const v3, 0x5c46734

    if-eq v1, v3, :cond_3

    const v3, 0x15d07c87    # 8.4207E-26f

    if-eq v1, v3, :cond_2

    const v3, 0x603dcac8

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "not_equal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "less_than"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "equal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "greater_than"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    if-ne v0, v4, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :pswitch_1
    if-ne v0, v5, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    :pswitch_2
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :pswitch_3
    if-nez v0, :cond_9

    const/4 v2, 0x1

    :catch_0
    :cond_9
    return v2

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/instabug/survey/d/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

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

.method e(Lcom/instabug/survey/e/c/c;)Z
    .locals 9

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateAppVersion(condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "greater_than"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "less_than"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/survey/e/c/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 33
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

    .line 35
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
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getIdentifiedUserEmail()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validateUserEmail(condition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "). userEmail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/survey/d/b;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/instabug/survey/d/b;->a(Lcom/instabug/survey/e/c/c;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
