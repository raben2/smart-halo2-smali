.class Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;
.super Ljava/lang/Object;
.source "NotifyDeveloperHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/brightinventions/slf4android/NotifyDeveloperHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowDialogBecauseOfRecord"
.end annotation


# instance fields
.field private final record:Lpl/brightinventions/slf4android/LogRecord;

.field final synthetic this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;


# direct methods
.method public constructor <init>(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Lpl/brightinventions/slf4android/LogRecord;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->record:Lpl/brightinventions/slf4android/LogRecord;

    return-void
.end method

.method private obtainActivityContext()Landroid/app/Activity;
    .locals 1

    .line 198
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/brightinventions/slf4android/ActivityStateListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lpl/brightinventions/slf4android/ActivityStateListener;->getLastUsedActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 172
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$300(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$400(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)V

    .line 178
    invoke-direct {p0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->obtainActivityContext()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    iget-object v2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->record:Lpl/brightinventions/slf4android/LogRecord;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$600(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v4}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$700(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v5}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$800(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v6}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$900(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->showDialogIn(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecord;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$502(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$1000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->record:Lpl/brightinventions/slf4android/LogRecord;

    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$600(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$700(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$800(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$900(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->showIntent(Landroid/content/Context;Lpl/brightinventions/slf4android/LogRecord;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperHandler$ShowDialogBecauseOfRecord;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperHandler;

    invoke-static {v1}, Lpl/brightinventions/slf4android/NotifyDeveloperHandler;->access$1000(Lpl/brightinventions/slf4android/NotifyDeveloperHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
