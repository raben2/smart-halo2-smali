.class public Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;
.super Landroid/app/Activity;
.source "NotifyDeveloperDialogDisplayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyDeveloperDialogDisplayActivity"

.field private static final messageFormatter:Lpl/brightinventions/slf4android/MessageValueSupplier;


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lpl/brightinventions/slf4android/MessageValueSupplier;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/MessageValueSupplier;-><init>()V

    sput-object v0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->messageFormatter:Lpl/brightinventions/slf4android/MessageValueSupplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->sendEmailWithError(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;)V

    return-void
.end method

.method private static buildAttachmentFactories(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-static {v1}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->loadAttachmentFactoryClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 101
    sget-object v3, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t create attachment factory from class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 99
    sget-object v3, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t create attachment factory from class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private buildAttachmentFactoriesFromIntent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getAttachmentFactoriesClassNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->buildAttachmentFactories(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAttachmentFactoriesClassNames()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getMessage(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    sget-object v1, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->messageFormatter:Lpl/brightinventions/slf4android/MessageValueSupplier;

    invoke-virtual {v1, p0, v0}, Lpl/brightinventions/slf4android/MessageValueSupplier;->append(Lpl/brightinventions/slf4android/LogRecord;Ljava/lang/StringBuilder;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadAttachmentFactoryClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found for attachment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static sendEmailWithError(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;)V
    .locals 2

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message/rfc822"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Lpl/brightinventions/slf4android/EmailErrorReport;->configureRecipients(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p1, v0}, Lpl/brightinventions/slf4android/EmailErrorReport;->configureSubject(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p1, v0}, Lpl/brightinventions/slf4android/EmailErrorReport;->configureMessage(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p1, v0}, Lpl/brightinventions/slf4android/EmailErrorReport;->configureAttachments(Landroid/content/Intent;)V

    :try_start_0
    const-string p1, "Send mail..."

    .line 126
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "There are no email clients installed."

    const/4 v0, 0x0

    .line 128
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static showDialogIn(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/Disposable;)Landroid/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;>;",
            "Lpl/brightinventions/slf4android/Disposable;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .line 51
    new-instance v0, Lpl/brightinventions/slf4android/EmailErrorReport;

    invoke-direct {v0, p1, p2, p3, p4}, Lpl/brightinventions/slf4android/EmailErrorReport;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/AsyncTask;

    .line 53
    invoke-static {p0, p3}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->startTaskExecution(Landroid/content/Context;Landroid/os/AsyncTask;)V

    .line 54
    invoke-virtual {v0, p3}, Lpl/brightinventions/slf4android/EmailErrorReport;->addFileAttachmentFrom(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_0
    const-string p2, "\n"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "Notify developer about error?"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040013

    new-instance p3, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;

    invoke-direct {p3, p0, v0, p6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;-><init>(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;Lpl/brightinventions/slf4android/Disposable;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x1040009

    new-instance p2, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$1;

    invoke-direct {p2, p6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$1;-><init>(Lpl/brightinventions/slf4android/Disposable;)V

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0
.end method

.method public static showDialogIn(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecord;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/app/AlertDialog;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/brightinventions/slf4android/LogRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getMessage(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->buildAttachmentFactories(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->showDialogIn(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/Disposable;)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showIntent(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecord;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/brightinventions/slf4android/LogRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x14000000

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "log_record"

    .line 27
    invoke-static {p1}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getMessage(Lpl/brightinventions/slf4android/LogRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "email_addresses"

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 29
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "attachments"

    .line 33
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "email_subject"

    .line 34
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "email_body"

    .line 35
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static startTaskExecution(Landroid/content/Context;Landroid/os/AsyncTask;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-ge v0, v3, :cond_0

    .line 110
    new-array v0, v2, [Landroid/content/Context;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Landroid/content/Context;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "log_record"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "email_addresses"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 149
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "email_subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "email_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->buildAttachmentFactoriesFromIntent()Ljava/util/List;

    move-result-object v5

    if-eqz v1, :cond_0

    .line 153
    new-instance v6, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$3;

    invoke-direct {v6, p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$3;-><init>(Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->showDialogIn(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/Disposable;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 176
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->dialog:Landroid/app/AlertDialog;

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
