.class public final Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MessagesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4756
    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$6900()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V
    .locals 0

    .line 4749
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAction()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5143
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5144
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public clearActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5060
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5061
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public clearBackgroundHexColor()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5197
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5198
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public clearBody()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4897
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4898
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public clearImageUrl()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4955
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4956
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public clearTitle()Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4826
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4827
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;)V

    return-object p0
.end method

.method public getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 1

    .line 5089
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v0

    return-object v0
.end method

.method public getActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 1

    .line 5002
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 1

    .line 5158
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5171
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBackgroundHexColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4851
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 4913
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4927
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 1

    .line 4780
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 5076
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasActionButton()Z
    .locals 1

    .line 4988
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasActionButton()Z

    move-result v0

    return v0
.end method

.method public hasBody()Z
    .locals 1

    .line 4840
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasBody()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 4769
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public mergeAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5130
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5131
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public mergeActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5046
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5047
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4886
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4887
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7400(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4815
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4816
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7100(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5116
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5117
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5101
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5102
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8200(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-object p0
.end method

.method public setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5031
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5032
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7900(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5015
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5016
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7900(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-object p0
.end method

.method public setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5184
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5185
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8500(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBackgroundHexColorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 5212
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 5213
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$8700(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4875
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4861
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4862
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7300(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4941
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4942
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7600(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4971
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4972
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7800(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4803
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4804
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;
    .locals 1

    .line 4790
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->copyOnWrite()V

    .line 4791
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;->access$7000(Lcom/google/firebase/inappmessaging/MessagesProto$ModalMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-object p0
.end method
