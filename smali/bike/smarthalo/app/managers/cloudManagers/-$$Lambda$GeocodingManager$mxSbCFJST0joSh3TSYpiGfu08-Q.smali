.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$mxSbCFJST0joSh3TSYpiGfu08-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$mxSbCFJST0joSh3TSYpiGfu08-Q;->f$0:Lbike/smarthalo/app/models/SHLocation;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$GeocodingManager$mxSbCFJST0joSh3TSYpiGfu08-Q;->f$0:Lbike/smarthalo/app/models/SHLocation;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->lambda$getLocationInformation$3(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/GenericResponse;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    return-object p1
.end method
