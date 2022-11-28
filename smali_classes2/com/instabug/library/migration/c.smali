.class public final Lcom/instabug/library/migration/c;
.super Ljava/lang/Object;
.source "MigrationManager.java"


# static fields
.field private static final a:[Lcom/instabug/library/migration/AbstractMigration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [Lcom/instabug/library/migration/AbstractMigration;

    new-instance v1, Lcom/instabug/library/migration/a;

    invoke-direct {v1}, Lcom/instabug/library/migration/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/h;

    invoke-direct {v1}, Lcom/instabug/library/migration/h;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/b;

    invoke-direct {v1}, Lcom/instabug/library/migration/b;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/e;

    invoke-direct {v1}, Lcom/instabug/library/migration/e;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/f;

    invoke-direct {v1}, Lcom/instabug/library/migration/f;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/d;

    invoke-direct {v1}, Lcom/instabug/library/migration/d;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/g;

    invoke-direct {v1}, Lcom/instabug/library/migration/g;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/instabug/library/migration/i;

    invoke-direct {v1}, Lcom/instabug/library/migration/i;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/instabug/library/migration/c;->a:[Lcom/instabug/library/migration/AbstractMigration;

    return-void
.end method

.method private static a(Lcom/instabug/library/migration/AbstractMigration;)Z
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/migration/AbstractMigration;->getMigrationVersion()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/migration/AbstractMigration;->shouldMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if should apply this migration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/library/migration/AbstractMigration;->getMigrationId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " last migration version is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/instabug/library/settings/SettingsManager;->getLastMigrationVersion()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " target migration version "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MigrationManager"

    invoke-static {v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private static a(Landroid/content/Context;)[Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")[",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/migration/AbstractMigration;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/instabug/library/migration/c;->a:[Lcom/instabug/library/migration/AbstractMigration;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4, p0}, Lcom/instabug/library/migration/AbstractMigration;->initialize(Landroid/content/Context;)V

    .line 4
    invoke-static {v4}, Lcom/instabug/library/migration/c;->a(Lcom/instabug/library/migration/AbstractMigration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/instabug/library/migration/AbstractMigration;->doPreMigration()V

    .line 6
    invoke-virtual {v4}, Lcom/instabug/library/migration/AbstractMigration;->migrate()Lio/reactivex/Observable;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/instabug/library/migration/c;->a(Ljava/util/ArrayList;)[Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;)[Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/migration/AbstractMigration;",
            ">;>;)[",
            "Lio/reactivex/Observable;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lio/reactivex/Observable;

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/Observable;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/instabug/library/migration/c;->a(Landroid/content/Context;)[Lio/reactivex/Observable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Observable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/instabug/library/migration/c$a;

    invoke-direct {v0}, Lcom/instabug/library/migration/c$a;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_0
    const-string p0, "MigrationManager"

    const-string v0, "No migrations to run"

    .line 25
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
