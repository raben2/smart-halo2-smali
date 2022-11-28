.class public Lcom/instabug/library/util/InstabugDeprecationLogger;
.super Ljava/lang/Object;
.source "InstabugDeprecationLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/util/InstabugDeprecationLogger$MigrationSection;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/instabug/library/util/InstabugDeprecationLogger; = null

.field private static final PREFIX_SECTION:Ljava/lang/String; = "#section-"

.field static baseUrl:Ljava/lang/String; = "https://docs.instabug.com/docs/android-sdk-8-6-migration-guide"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/util/InstabugDeprecationLogger;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/util/InstabugDeprecationLogger;->INSTANCE:Lcom/instabug/library/util/InstabugDeprecationLogger;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/util/InstabugDeprecationLogger;

    invoke-direct {v0}, Lcom/instabug/library/util/InstabugDeprecationLogger;-><init>()V

    sput-object v0, Lcom/instabug/library/util/InstabugDeprecationLogger;->INSTANCE:Lcom/instabug/library/util/InstabugDeprecationLogger;

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/library/util/InstabugDeprecationLogger;->INSTANCE:Lcom/instabug/library/util/InstabugDeprecationLogger;

    return-object v0
.end method

.method private getSection(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "setstate"

    return-object p1

    :cond_1
    const-string p1, "show"

    return-object p1
.end method

.method private static setBaseUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sput-object p0, Lcom/instabug/library/util/InstabugDeprecationLogger;->baseUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static tearDown()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/library/util/InstabugDeprecationLogger;->INSTANCE:Lcom/instabug/library/util/InstabugDeprecationLogger;

    return-void
.end method


# virtual methods
.method getMigrationPageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/util/InstabugDeprecationLogger;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method getMigrationPageUrl(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/instabug/library/util/InstabugDeprecationLogger;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#section-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getSection(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public log(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\nIn this release, we\u2019re improving the in-app communication experience. Now, your end user will have a unified experience while sending you a report independently from its type. Whether it is a bug, improvement, or question, they\u2019ll see the same experience.\n\nThe Chats class and its methods have been deprecated, and while they still function, they will be completely removed in a future release. For more details about this API\u2019s replacement, check the docs here: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0, p1}, Lcom/instabug/library/util/InstabugDeprecationLogger;->getMigrationPageUrl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\n\nIf you have any questions please reach out to us through contactus@instabug.com."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "INSTABUG"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/instabug/library/Instabug;->isBuilt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instabug/library/Instabug;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "INSTABUG"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
