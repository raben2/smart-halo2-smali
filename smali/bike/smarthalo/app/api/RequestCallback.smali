.class public abstract Lbike/smarthalo/app/api/RequestCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"


# static fields
.field public static final EDIT_FAILED:Ljava/lang/String; = "editFailed"

.field public static final EMAIL_AVAILABLE:Ljava/lang/String; = "emailAvailable"

.field public static final EMAIL_TAKEN:Ljava/lang/String; = "emailTaken"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final LOGIN_FAILED:Ljava/lang/String; = "loginFailed"

.field public static final OK:Ljava/lang/String; = "ok"

.field public static final SERVER_ERROR:Ljava/lang/String; = "serverError"

.field public static final SIGNUP_FAILED:Ljava/lang/String; = "signupFailed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 0

    return-void
.end method

.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPastRidesReady(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRideUploaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideMarker;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/location/Address;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lbike/smarthalo/app/api/responses/UserResponse;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lbike/smarthalo/app/models/SHUser;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/UserFavourite;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
