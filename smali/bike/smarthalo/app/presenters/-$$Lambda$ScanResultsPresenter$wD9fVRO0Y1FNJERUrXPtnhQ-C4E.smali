.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$ScanResultsPresenter$wD9fVRO0Y1FNJERUrXPtnhQ-C4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ScanResultsPresenter$wD9fVRO0Y1FNJERUrXPtnhQ-C4E;->f$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$ScanResultsPresenter$wD9fVRO0Y1FNJERUrXPtnhQ-C4E;->f$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    check-cast p1, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->lambda$subscribeToDFUAvailability$0(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    return-void
.end method
