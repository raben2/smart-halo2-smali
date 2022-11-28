.class final Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;
.super Ljava/lang/Object;
.source "NotifyDeveloperDialogDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->showDialogIn(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Lpl/brightinventions/slf4android/Disposable;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityContext:Landroid/content/Context;

.field final synthetic val$emailErrorReport:Lpl/brightinventions/slf4android/EmailErrorReport;

.field final synthetic val$onDialogClose:Lpl/brightinventions/slf4android/Disposable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;Lpl/brightinventions/slf4android/Disposable;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$activityContext:Landroid/content/Context;

    iput-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$emailErrorReport:Lpl/brightinventions/slf4android/EmailErrorReport;

    iput-object p3, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$onDialogClose:Lpl/brightinventions/slf4android/Disposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 68
    iget-object p2, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$activityContext:Landroid/content/Context;

    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$emailErrorReport:Lpl/brightinventions/slf4android/EmailErrorReport;

    invoke-static {p2, v0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->access$000(Landroid/content/Context;Lpl/brightinventions/slf4android/EmailErrorReport;)V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    iget-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$2;->val$onDialogClose:Lpl/brightinventions/slf4android/Disposable;

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Lpl/brightinventions/slf4android/Disposable;->dispose()V

    :cond_0
    return-void
.end method
