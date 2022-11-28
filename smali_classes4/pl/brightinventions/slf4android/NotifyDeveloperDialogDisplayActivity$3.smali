.class Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$3;
.super Ljava/lang/Object;
.source "NotifyDeveloperDialogDisplayActivity.java"

# interfaces
.implements Lpl/brightinventions/slf4android/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;


# direct methods
.method constructor <init>(Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$3;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 156
    iget-object v0, p0, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity$3;->this$0:Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;

    invoke-virtual {v0}, Lpl/brightinventions/slf4android/NotifyDeveloperDialogDisplayActivity;->finish()V

    return-void
.end method
