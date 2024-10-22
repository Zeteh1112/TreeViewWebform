<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeViewPage.aspx.cs" Inherits="TreeViewWebform.TreeViewPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tree View Example</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-decoration-color: #2e2d2b;
            color: #2e2d2b;
        }

        .treeview-container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 10px;
            max-width: 800px;
            margin: 0 auto;
            text-decoration-color: #2e2d2b;
            color: #2e2d2b;
        }

            .treeview-container ul {
                list-style-type: none;
                padding-left: 20px;
                color: #2e2d2b;
            }

            .treeview-container li {
                margin: 5px 0;
            }

                .treeview-container li:before {
                    content: "";
                    display: inline-block;
                    width: 8px;
                    height: 8px;
                    border-radius: 50%;
                    background-color: #2e2d2b;
                    margin-right: 5px;
                    vertical-align: middle;
                }

            .treeview-container .aspNetHidden {
                display: none;
            }

            .treeview-container .aspNetTreeNode {
                padding: 5px;
                border-radius: 4px;
                transition: background-color 0.3s;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 14px;
                color: #2e2d2b;
            }

                .treeview-container .aspNetTreeNode:hover {
                    background-color: #e9ecef;
                    color: #2e2d2b;
                }

                .treeview-container .aspNetTreeNode a {
                    text-decoration: none;
                    color: inherit;
                    color: #2e2d2b;
                    font-weight: bold;
                }

                    .treeview-container .aspNetTreeNode a:hover {
                        text-decoration: underline;
                    }

                .treeview-container .aspNetTreeNode .node-label {
                    font-style: italic; /* Italicize node text */
                }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="treeview-container">
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="Motorcycles" Value="1" Expanded="false">
                        <asp:TreeNode Text="Brands" Value="1.1" Expanded="false">
                            <asp:TreeNode Text="About" Value="1.1.1" Expanded="false">
                                <asp:TreeNode Text="Types" Value="1.1.1.1" Expanded="false">
                                    <asp:TreeNode Text="Street" Value="1.1.1.1.1" Expanded="false">
                                        <asp:TreeNode Text="CC" Value="1.1.1.1.1.1" Expanded="false">
                                            <asp:TreeNode Text="125-250" Value="1.1.1.1.1.1.1" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.1.1.1.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="300-500" Value="1.1.1.1.1.2" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.1.2.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="600-1000" Value="1.1.1.1.1.3" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.1.3.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text=">1000" Value="1.1.1.1.1.4" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.1.4.1" />
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Track" Value="1.1.1.1.2" Expanded="false">
                                        <asp:TreeNode Text="CC" Value="1.1.1.1.2.1" Expanded="false">
                                            <asp:TreeNode Text="125-250" Value="1.1.1.1.2.1.1" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.2.1.1.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="300-500" Value="1.1.1.1.2.1.2" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.2.1.2.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="600-1000" Value="1.1.1.1.2.1.3" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.2.1.3.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text=">1000" Value="1.1.1.1.2.1.4" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.2.1.4.1" />
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Tour" Value="1.1.1.1.3" Expanded="false">
                                        <asp:TreeNode Text="CC" Value="1.1.1.1.3.1" Expanded="false">
                                            <asp:TreeNode Text="125-250" Value="1.1.1.1.3.1.1" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.3.1.1.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="300-500" Value="1.1.1.1.3.1.2" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.3.1.2.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="600-1000" Value="1.1.1.1.3.1.3" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.3.1.3.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text=">1000" Value="1.1.1.1.3.1.4" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.3.1.4.1" />
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Moped" Value="1.1.1.1.4" Expanded="false">
                                        <asp:TreeNode Text="CC" Value="1.1.1.1.4.1" Expanded="false">
                                            <asp:TreeNode Text="125-250" Value="1.1.1.1.4.1.1" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.4.1.1.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="300-500" Value="1.1.1.1.4.1.2" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.4.1.2.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="600-1000" Value="1.1.1.1.4.1.3" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.4.1.3.1" />
                                            </asp:TreeNode>
                                            <asp:TreeNode Text=">1000" Value="1.1.1.1.4.1.4" Expanded="false">
                                                <asp:TreeNode Text="Bike 1" Value="1.1.1.1.4.1.4.1" />
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
