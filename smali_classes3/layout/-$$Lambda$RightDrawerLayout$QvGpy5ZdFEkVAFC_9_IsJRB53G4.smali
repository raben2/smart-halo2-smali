.class public final synthetic Llayout/-$$Lambda$RightDrawerLayout$QvGpy5ZdFEkVAFC_9_IsJRB53G4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Llayout/RightDrawerLayout;


# direct methods
.method public synthetic constructor <init>(Llayout/RightDrawerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$RightDrawerLayout$QvGpy5ZdFEkVAFC_9_IsJRB53G4;->f$0:Llayout/RightDrawerLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$RightDrawerLayout$QvGpy5ZdFEkVAFC_9_IsJRB53G4;->f$0:Llayout/RightDrawerLayout;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, p1}, Llayout/RightDrawerLayout;->lambda$checkEmailConfirmationAndShowScanActivity$1(Llayout/RightDrawerLayout;Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
