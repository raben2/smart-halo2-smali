.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/TrackingController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/TrackingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA;->f$0:Lbike/smarthalo/app/controllers/TrackingController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA;->f$0:Lbike/smarthalo/app/controllers/TrackingController;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/TrackingController;->lambda$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA(Lbike/smarthalo/app/controllers/TrackingController;Landroid/location/Location;)V

    return-void
.end method
