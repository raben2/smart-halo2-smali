.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRolloutOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRolloutOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 517
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$000()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEndTime()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 839
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;)V

    return-object p0
.end method

.method public clearExperimentId()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;)V

    return-object p0
.end method

.method public clearPriority()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;)V

    return-object p0
.end method

.method public clearSelectedVariantIndex()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;)V

    return-object p0
.end method

.method public clearStartTime()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;)V

    return-object p0
.end method

.method public getEndTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getEndTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedVariantIndex()I
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getSelectedVariantIndex()I

    move-result v0

    return v0
.end method

.method public getStartTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->getStartTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    return-object v0
.end method

.method public hasEndTime()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->hasEndTime()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasStartTime()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->hasStartTime()Z

    move-result v0

    return v0
.end method

.method public mergeEndTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 827
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 828
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public mergePriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 685
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public mergeStartTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public setEndTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public setEndTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$1200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public setExperimentId(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public setSelectedVariantIndex(I)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;I)V

    return-object p0
.end method

.method public setStartTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public setStartTime(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;
    .locals 1

    .line 731
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->copyOnWrite()V

    .line 732
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;->access$900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignRollout;Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method
