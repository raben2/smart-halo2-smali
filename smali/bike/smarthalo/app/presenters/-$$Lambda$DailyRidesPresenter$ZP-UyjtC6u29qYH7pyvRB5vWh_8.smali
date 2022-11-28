.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$ZP-UyjtC6u29qYH7pyvRB5vWh_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$ZP-UyjtC6u29qYH7pyvRB5vWh_8;->f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$ZP-UyjtC6u29qYH7pyvRB5vWh_8;->f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;

    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-static {v0, p1}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->lambda$observeRideUploaded$0(Lbike/smarthalo/app/presenters/DailyRidesPresenter;Lbike/smarthalo/app/models/Ping;)V

    return-void
.end method
