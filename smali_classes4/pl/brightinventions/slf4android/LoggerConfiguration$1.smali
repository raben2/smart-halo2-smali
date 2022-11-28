.class Lpl/brightinventions/slf4android/LoggerConfiguration$1;
.super Ljava/lang/Object;
.source "LoggerConfiguration.java"

# interfaces
.implements Lpl/brightinventions/slf4android/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/brightinventions/slf4android/LoggerConfiguration;->getStateListener(Landroid/app/Application;)Lpl/brightinventions/slf4android/ActivityStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/brightinventions/slf4android/LoggerConfiguration;

.field final synthetic val$context:Landroid/app/Application;

.field final synthetic val$stateListener:Lpl/brightinventions/slf4android/ActivityStateListener;


# direct methods
.method constructor <init>(Lpl/brightinventions/slf4android/LoggerConfiguration;Landroid/app/Application;Lpl/brightinventions/slf4android/ActivityStateListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lpl/brightinventions/slf4android/LoggerConfiguration$1;->this$0:Lpl/brightinventions/slf4android/LoggerConfiguration;

    iput-object p2, p0, Lpl/brightinventions/slf4android/LoggerConfiguration$1;->val$context:Landroid/app/Application;

    iput-object p3, p0, Lpl/brightinventions/slf4android/LoggerConfiguration$1;->val$stateListener:Lpl/brightinventions/slf4android/ActivityStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 158
    iget-object v0, p0, Lpl/brightinventions/slf4android/LoggerConfiguration$1;->val$context:Landroid/app/Application;

    iget-object v1, p0, Lpl/brightinventions/slf4android/LoggerConfiguration$1;->val$stateListener:Lpl/brightinventions/slf4android/ActivityStateListener;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
