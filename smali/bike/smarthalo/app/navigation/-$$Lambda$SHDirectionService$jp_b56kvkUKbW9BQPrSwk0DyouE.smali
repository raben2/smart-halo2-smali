.class public final synthetic Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

.field private final synthetic f$1:Lbike/smarthalo/navigation/models/NavigationMode;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;->f$1:Lbike/smarthalo/navigation/models/NavigationMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;->f$0:Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;->f$1:Lbike/smarthalo/navigation/models/NavigationMode;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->lambda$onDirectNavigationStart$1(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;)V

    return-void
.end method
