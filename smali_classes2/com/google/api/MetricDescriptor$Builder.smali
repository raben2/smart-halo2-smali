.class public final Lcom/google/api/MetricDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/api/MetricDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MetricDescriptor;",
        "Lcom/google/api/MetricDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MetricDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2443
    invoke-static {}, Lcom/google/api/MetricDescriptor;->access$1100()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MetricDescriptor$1;)V
    .locals 0

    .line 2436
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/MetricDescriptor$Builder;"
        }
    .end annotation

    .line 2786
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2787
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2100(Lcom/google/api/MetricDescriptor;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2767
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2768
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2769
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 2768
    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$2000(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2731
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2732
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$2000(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2749
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2750
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1900(Lcom/google/api/MetricDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2713
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2714
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1900(Lcom/google/api/MetricDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public clearDescription()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3490
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3491
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3400(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3571
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3572
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3700(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearLabels()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2803
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2804
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2200(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearLaunchStage()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3726
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3727
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$4400(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearMetadata()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3660
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3661
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$4100(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearMetricKind()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2891
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2892
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2600(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2496
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2497
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$1300(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearType()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2589
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2590
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$1600(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearUnit()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3340
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3341
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$3100(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public clearValueType()Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2962
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2963
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0}, Lcom/google/api/MetricDescriptor;->access$2900(Lcom/google/api/MetricDescriptor;)V

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 3451
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3464
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 3523
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3539
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/MetricDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getLabelsCount()I
    .locals 1

    .line 2646
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLabelsCount()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 2629
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2630
    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 2629
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 3701
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 3675
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getLaunchStageValue()I

    move-result v0

    return v0
.end method

.method public getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
    .locals 1

    .line 3614
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1

    .line 2864
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;

    move-result-object v0

    return-object v0
.end method

.method public getMetricKindValue()I
    .locals 1

    .line 2836
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getMetricKindValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2457
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2470
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 2532
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2551
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 3058
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3152
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getUnitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1

    .line 2935
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getValueType()Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeValue()I
    .locals 1

    .line 2907
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->getValueTypeValue()I

    move-result v0

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    .line 3603
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v0

    return v0
.end method

.method public mergeMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3649
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3650
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4000(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0
.end method

.method public removeLabels(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2820
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2821
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2300(Lcom/google/api/MetricDescriptor;I)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3477
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3478
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3300(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3505
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3506
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3500(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3555
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3556
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3600(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3589
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3590
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3800(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2695
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2696
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    .line 2697
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 2696
    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$1800(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2677
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2678
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MetricDescriptor;->access$1800(Lcom/google/api/MetricDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3713
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3714
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4300(Lcom/google/api/MetricDescriptor;Lcom/google/api/LaunchStage;)V

    return-object p0
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3687
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3688
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$4200(Lcom/google/api/MetricDescriptor;I)V

    return-object p0
.end method

.method public setMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3637
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3638
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3900(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0
.end method

.method public setMetadata(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3624
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3625
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3900(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)V

    return-object p0
.end method

.method public setMetricKind(Lcom/google/api/MetricDescriptor$MetricKind;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2877
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2878
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2500(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricKind;)V

    return-object p0
.end method

.method public setMetricKindValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2849
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2850
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2400(Lcom/google/api/MetricDescriptor;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2483
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2484
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1200(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2511
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2512
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1400(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2570
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2571
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1500(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2610
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2611
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$1700(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3246
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3247
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3000(Lcom/google/api/MetricDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnitBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 3436
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 3437
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$3200(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValueType(Lcom/google/api/MetricDescriptor$ValueType;)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2948
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2949
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2800(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$ValueType;)V

    return-object p0
.end method

.method public setValueTypeValue(I)Lcom/google/api/MetricDescriptor$Builder;
    .locals 1

    .line 2920
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor$Builder;->copyOnWrite()V

    .line 2921
    iget-object v0, p0, Lcom/google/api/MetricDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MetricDescriptor;->access$2700(Lcom/google/api/MetricDescriptor;I)V

    return-object p0
.end method
