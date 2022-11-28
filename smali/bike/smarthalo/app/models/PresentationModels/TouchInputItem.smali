.class public Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
.super Ljava/lang/Object;
.source "TouchInputItem.java"


# instance fields
.field public description:Ljava/lang/String;

.field public icon:I

.field public isSpacer:Z

.field public tapcode:Ljava/lang/String;

.field public tapcodeDescription:Ljava/lang/String;

.field public type:Lbike/smarthalo/app/models/TouchInputItemType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    .line 19
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    .line 21
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcodeDescription:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    iput-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->description:Ljava/lang/String;

    .line 23
    iget v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    iput v0, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    .line 24
    iget-boolean p1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    iput-boolean p1, p0, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->isSpacer:Z

    return-void
.end method
