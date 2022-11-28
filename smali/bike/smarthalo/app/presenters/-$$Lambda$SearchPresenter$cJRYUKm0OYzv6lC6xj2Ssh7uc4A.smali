.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationInformationListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHLocation;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/SearchPresenter;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;->f$1:Lbike/smarthalo/app/models/SHLocation;

    return-void
.end method


# virtual methods
.method public final onLocationReady(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$cJRYUKm0OYzv6lC6xj2Ssh7uc4A;->f$1:Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->lambda$onSearchResultClicked$4(Lbike/smarthalo/app/presenters/SearchPresenter;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method
