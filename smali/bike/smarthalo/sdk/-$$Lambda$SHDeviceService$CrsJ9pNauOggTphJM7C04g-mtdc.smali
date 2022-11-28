.class public final synthetic Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$CrsJ9pNauOggTphJM7C04g-mtdc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/SHDeviceService;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$CrsJ9pNauOggTphJM7C04g-mtdc;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$CrsJ9pNauOggTphJM7C04g-mtdc;->f$0:Lbike/smarthalo/sdk/SHDeviceService;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->lambda$startAuthenticationTimeout$7(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/Long;)V

    return-void
.end method
