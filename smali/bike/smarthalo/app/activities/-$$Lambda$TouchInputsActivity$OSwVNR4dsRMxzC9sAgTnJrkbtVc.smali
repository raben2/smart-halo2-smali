.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

.field private final synthetic f$1:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;->f$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;->f$1:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;->f$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    iget-object v1, p0, Lbike/smarthalo/app/activities/-$$Lambda$TouchInputsActivity$OSwVNR4dsRMxzC9sAgTnJrkbtVc;->f$1:Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    invoke-static {v0, v1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->lambda$showListPage$2(Lbike/smarthalo/app/activities/TouchInputsActivity;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    return-void
.end method
