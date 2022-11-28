.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$FYgHw59TraIe5ngQTaX1a4wlT-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/GenericResponse;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$FYgHw59TraIe5ngQTaX1a4wlT-o;->f$0:Lbike/smarthalo/app/models/GenericResponse;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$FYgHw59TraIe5ngQTaX1a4wlT-o;->f$0:Lbike/smarthalo/app/models/GenericResponse;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$null$8(Lbike/smarthalo/app/models/GenericResponse;Lbike/smarthalo/app/models/Ping;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object p1

    return-object p1
.end method
