.class public final synthetic Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifecycleAwareServiceLauncher$J1b1YVQsM3rczQ5XuSGO9YHTbTM;->f$1:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->lambda$startService$0(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Long;)V

    return-void
.end method
