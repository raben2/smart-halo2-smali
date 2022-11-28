.class Lpl/brightinventions/slf4android/ActivityStateListener$1;
.super Ljava/lang/Object;
.source "ActivityStateListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/ActivityStateListener;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/brightinventions/slf4android/ActivityStateListener;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lpl/brightinventions/slf4android/ActivityStateListener;Landroid/app/Activity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lpl/brightinventions/slf4android/ActivityStateListener$1;->this$0:Lpl/brightinventions/slf4android/ActivityStateListener;

    iput-object p2, p0, Lpl/brightinventions/slf4android/ActivityStateListener$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener$1;->this$0:Lpl/brightinventions/slf4android/ActivityStateListener;

    invoke-static {v0}, Lpl/brightinventions/slf4android/ActivityStateListener;->access$000(Lpl/brightinventions/slf4android/ActivityStateListener;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lpl/brightinventions/slf4android/ActivityStateListener$1;->val$activity:Landroid/app/Activity;

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lpl/brightinventions/slf4android/ActivityStateListener$1;->this$0:Lpl/brightinventions/slf4android/ActivityStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpl/brightinventions/slf4android/ActivityStateListener;->access$002(Lpl/brightinventions/slf4android/ActivityStateListener;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_0
    return-void
.end method
